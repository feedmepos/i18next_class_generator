// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';

import 'package:build/build.dart';
import 'package:path/path.dart' show basenameWithoutExtension;
import 'package:glob/glob.dart';

Builder i18NextClassGenerator(BuilderOptions options) =>
    I18NextClassGenerator();

class I18NextClassGenerator implements Builder {
  /*
    buildStep.readAsString(buildStep.inputId)  // This returns the content of the .json

   */

  @override
  Future build(BuildStep buildStep) async {
    final exports = buildStep.findAssets(Glob('lib/i18next/**.json'));
    // print('TEST: ${await buildStep.readAsString(buildStep.inputId)}');

    // await for (var exportLibrary in exports) {
    //   print('LOGGING: ${exportLibrary.uri}');
    // }

    AssetId currentAsset = buildStep.inputId;
    var copy = currentAsset.changeExtension('.dart');
    // print('discover ${buildStep.inputId}');
    var filename = basenameWithoutExtension(buildStep.inputId.toString());
    // await buildStep.writeAsString(copy, 'lib/i18next/$filename.i18next.dart');
    File file = File('lib/i18next/$filename.i18next.dart');
    file.writeAsStringSync(await buildStep.readAsString(buildStep.inputId),
        mode: FileMode.append);

    // await buildStep.writeAsString(
    //     new AssetId(currentAsset.package, 'lib/i18next/$filename.i18next.dart'),
    //     '');
  }

  @override
  final buildExtensions = const {
    '.json': ['.i18next.dart']
  };
}
