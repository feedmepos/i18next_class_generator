// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: import_of_legacy_library_into_null_safe
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' show basenameWithoutExtension, dirname;
import 'package:glob/glob.dart';
import 'package:code_builder/code_builder.dart';

Builder i18NextJsonResolverFactory(BuilderOptions options) => JsonResolver();

class JsonResolver extends Builder {
  static const suffix = '.i18next.export';

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    await buildStep.writeAsString(buildStep.inputId.changeExtension(suffix),
        buildStep.readAsString(buildStep.inputId));
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': [suffix]
      };
}

Builder i18NextClassGeneratorFactory(BuilderOptions options) =>
    I18NextClassGenerator();

class I18NextClassGenerator implements Builder {
  /*
    ===Useful snippets===

    buildStep.findAssets(Glob('lib/i18next/(**)')) // Retuns a list, useful for getting info on files contained in folders, remove the "()" wrapping the "**"

    buildStep.readAsString(buildStep.inputId)  // This returns the content of the .json

    file.writeAsStringSync(await buildStep.readAsString(buildStep.inputId),
        mode: FileMode
            .append); //appends the json content to the new dart file, remove append mode if want to rewrite the file

    file.writeAsStringSync(
        r'class Messages { const Messages(); ButtonMessages get button => ButtonExampleMessages(this); UsersMessages get users => UsersExampleMessages(this);}',
        mode: FileMode.append); //example of appending dart code into new dart file 

    jsonDecode(await buildStep.readAsString(buildStep.inputId)) //Convert json content to dart maps.           

    RegExp(r'(?<={{).*?(?=}})').allMatches(value).toList().length; //Gets amount of dynamic text in a string.

    parameterName.allMatches(value).toList()[0].group(0)  //returns dynamic variable name of first element
   */

  @override
  Future build(BuildStep buildStep) async {
    final allJsonFiles =
        await buildStep.findAssets(Glob('lib/i18next/**.json')).toList();

    Map<String, Map<String, Map<String, dynamic>>> languageMapping = {};

    for (var jsonFile in allJsonFiles) {
      var language = basenameWithoutExtension(dirname(jsonFile.path));
      var namespace = basenameWithoutExtension(jsonFile.path);
      var json = jsonDecode(await buildStep.readAsString(jsonFile));
      languageMapping[language] ??= {};
      languageMapping[language]?[namespace] = json;
    }
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    // print(encoder.convert(languageMapping));

    // validation
    for (var ns in languageMapping.entries) {}

    // generate class file
    final library = LibraryBuilder();
    library.directives.add(Directive.import('package:i18next/i18next.dart'));
    library.directives.add(Directive.import('package:flutter/widgets.dart'));
    // Loops through the files in en-US
    languageMapping.entries.first.value.entries.forEach((entry) {
      var namespace = entry.key; //json file name
      var translations = entry.value; //json content
      var namespaceClass = ClassBuilder();
      namespaceClass
        ..name = namespace
        ..fields.add(Field((fb) => fb
          ..name =
              'i18next' // adds a variable with name of 'i18nxt' eg: final I18Next i18next;
          ..modifier = FieldModifier.final$ //Gives it the type of final
          ..type = const Reference('I18Next')))
        ..constructors.add(
            Constructor((cb) => cb.requiredParameters.add(Parameter((p) => p
              ..name = 'i18next' //Affects class constructor
              ..toThis = true))));

      for (var translationPair in translations.entries) {
        // Handles strings with interpolation
        if (translationPair.value.runtimeType == String &&
            RegExp(r'(?<={{).*?(?=}})')
                .allMatches(translationPair.value)
                .isNotEmpty) {
          var matches = RegExp(r'(?<={{).*?(?=}})')
              .allMatches(translationPair.value)
              .toList();
          var translatedMatches =
              matches.map((e) => e.group(0)).toSet().toList();
          Map i18nVariables = {};
          var parameters = {};
          var containsObject; //Checks whether interpolation contains "."
          for (var i in translatedMatches) {
            if (i!.contains('.')) {
              containsObject = true;
              // Removes everything after the '.' if i is an object
              translatedMatches.insert(
                  translatedMatches.indexOf(i), i.toString().split('.')[0]);
              translatedMatches.removeAt(translatedMatches.indexOf(i));
              i = i.substring(0, i.indexOf('.'));
              var keyToString = i;
              keyToString = '"$i"'; // Convert key value to be wrapped by ""
              i18nVariables[keyToString] = i;
              // Refilters the list
              translatedMatches = translatedMatches.toSet().toList();
            } else if (i != 'count') {
              var keyToString = i;
              keyToString = '"$i"'; // Convert key value to be wrapped by ""
              containsObject = true;
              i18nVariables[keyToString] = i;
              // Refilters the list
              translatedMatches = translatedMatches.toSet().toList();
            } else {
              parameters[i] = i;
            }
          }
          namespaceClass.methods.add(Method((mb) => mb
            ..requiredParameters
                .add(Parameter((p) => p..name = translatedMatches.join(",")))
            ..name = translationPair.key
            ..body = Code(
                'return i18next.t(\'$namespace:${translationPair.key}\'${containsObject == true ? ", variables: $i18nVariables" : ""}${parameters.toString().isNotEmpty ? ', ' + parameters.toString().substring(1, parameters.toString().length - 1) : ""});')));
        }
        //Handles nested types
        else if (translationPair.value.runtimeType != String) {
          var clonedPair = translationPair.value.toString();
          clonedPair = clonedPair.replaceAll("{", "");
          clonedPair = clonedPair.replaceAll("}", "");
          namespaceClass.methods.add(Method((mb) => mb
            ..type = MethodType.getter
            ..name = translationPair.key
            ..body = Code(
                'return i18next.t(\'${namespace}:${translationPair.key}.${clonedPair.split(':')[0]}\');')));
        } else {
          namespaceClass.methods.add(Method((mb) => mb
            ..type = MethodType.getter
            ..name = translationPair.key
            ..body = Code(
                'return i18next.t(\'${namespace}:${translationPair.key}\');')));
        }
      }
      library.body.add(namespaceClass.build());
    });

    final emitter = DartEmitter();
    final finalFile = DartFormatter()
        .format('${library.build().accept(emitter)}'); //dart file content
    File file = File('lib/i18next/localizations.i18next.dart');
    file.writeAsStringSync(finalFile);

    // AssetId currentAsset = buildStep.inputId;
    // var copy = currentAsset.changeExtension('.dart');
    // // print('discover ${buildStep.inputId}');
    // var filename = basenameWithoutExtension(buildStep.inputId.toString());
    // var language = buildStep.inputId.pathSegments.reversed.elementAt(1);
    // var languageToVar = language.replaceAll(
    //     '-', '_'); // Replaces "-" to "_" so it can be used as a variable name.
    // // await buildStep.writeAsString(copy, 'lib/i18next/$filename.i18next.dart');  //temp unused

    // File file = File('lib/i18next/$filename.i18next.dart');
    // // file.writeAsStringSync(await buildStep.readAsString(buildStep.inputId),
    // //     mode: FileMode
    // //         .append); // wont create multiple files if file with same name already exists.

    // Map jsonContentAsMap =
    //     jsonDecode(await buildStep.readAsString(buildStep.inputId));

    // final library = LibraryBuilder();
    // jsonContentAsMap.forEach((key, value) async {
    //   library.body.add(Class((b) => b..name = '${key}_$languageToVar'));
    //   // if (!value.contains('{{')) {
    //   //   file.writeAsStringSync(
    //   //       'class ${key}_$languageToVar { const ${key}_$languageToVar(); get value => "$value";}\n',
    //   //       mode: FileMode.append);
    //   // } else {
    //   //   List parameterNames =
    //   //       RegExp(r'(?<={{).*?(?=}})').allMatches(value).toList();
    //   //   List filteredParameters =
    //   //       parameterNames.map((e) => e.group(0)).toSet().toList();
    //   //   //Loops through the filtered list to only take in the first parameter, ignoring the others. eg: {{date, dd/MM/yyyy}} will only return date.
    //   //   await Future.forEach(filteredParameters, (item) async {
    //   //     if (item.toString().contains(',')) {
    //   //       filteredParameters.insert(filteredParameters.indexOf(item),
    //   //           item.toString().split(',')[0]);
    //   //       filteredParameters.removeAt(filteredParameters.indexOf(item));
    //   //     }
    //   //   });
    //   //   value = value.replaceAll("{{", r"$");
    //   //   value = value.replaceAll("}}", "");
    //   //   file.writeAsStringSync(
    //   //       'class ${key}_$languageToVar { const ${key}_$languageToVar(); value(${filteredParameters.join(', ')}) => "$value";}\n',
    //   //       mode: FileMode.append);
    //   // }
    // });

    // final emitter = DartEmitter();
    // final finalFile =
    //     DartFormatter().format('${library.build().accept(emitter)}');
    // print(finalFile);
    // file.writeAsStringSync(finalFile);

    // // print(jsonDecode(await buildStep.readAsString(buildStep.inputId)));

    // // await buildStep.writeAsString(
    // //     new AssetId(currentAsset.package, 'lib/i18next/$filename.i18next.dart'),
    // //     ''); //temp unused
  }

  @override
  final buildExtensions = const {
    r'$lib$': ['i18next.dart']
  };
}
