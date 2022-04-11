// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: import_of_legacy_library_into_null_safe
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:path/path.dart' show basenameWithoutExtension;
import 'package:glob/glob.dart';

Builder i18NextClassGenerator(BuilderOptions options) =>
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
    final exports = buildStep.findAssets(Glob('lib/i18next/**'));
    // print('TEST: ${await exports.toList()}');

    // await for (var exportLibrary in exports) {
    //   print('LOGGING: ${exportLibrary.uri}');
    // }

    AssetId currentAsset = buildStep.inputId;
    var copy = currentAsset.changeExtension('.dart');
    // print('discover ${buildStep.inputId}');
    var filename = basenameWithoutExtension(buildStep.inputId.toString());

    // await buildStep.writeAsString(copy, 'lib/i18next/$filename.i18next.dart');  //temp unused

    File file = File('lib/i18next/$filename.i18next.dart');
    // file.writeAsStringSync(await buildStep.readAsString(buildStep.inputId),
    //     mode: FileMode
    //         .append); // wont create multiple files if file with same name already exists.

    Map jsonContentAsMap =
        jsonDecode(await buildStep.readAsString(buildStep.inputId));
    jsonContentAsMap.forEach((key, value) async {
      if (!value.contains('{{')) {
        file.writeAsStringSync(
            'class $key { const $key(); get value => "$value";}\n',
            mode: FileMode.append);
      } else {
        List parameterNames =
            RegExp(r'(?<={{).*?(?=}})').allMatches(value).toList();
        List filteredParameters =
            parameterNames.map((e) => e.group(0)).toSet().toList();
        //Loops through the filtered list to only take in the first parameter, ignoring the others. eg: {{date, dd/MM/yyyy}} will only return date.
        await Future.forEach(filteredParameters, (item) async {
          if (item.toString().contains(',')) {
            filteredParameters.insert(filteredParameters.indexOf(item),
                item.toString().split(',')[0]);
            filteredParameters.removeAt(filteredParameters.indexOf(item));
            // print(filteredParameters.indexOf(item));
          }
        });
        print(filteredParameters);
        value = value.replaceAll("{{", r"$");
        value = value.replaceAll("}}", "");
        file.writeAsStringSync(
            'class $key { const $key(); value(${filteredParameters.join(', ')}) => "$value";}\n',
            mode: FileMode.append);
      }
    });
    // print(jsonDecode(await buildStep.readAsString(buildStep.inputId)));

    // await buildStep.writeAsString(
    //     new AssetId(currentAsset.package, 'lib/i18next/$filename.i18next.dart'),
    //     ''); //temp unused
  }

  @override
  final buildExtensions = const {
    '.json': ['.i18next.dart']
  };
}
