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
  @override
  Future build(BuildStep buildStep) async {
    print('building');
    final exports = buildStep.findAssets(Glob('**/*.json'));
    print(exports);

    await for (var exportLibrary in exports) {
      print(exportLibrary.uri);
    }

    AssetId currentAsset = buildStep.inputId;
    var copy = currentAsset.changeExtension('.dart');
    print('discover ${buildStep.inputId}');
    var filename = basenameWithoutExtension(buildStep.inputId.toString());
    // await buildStep.writeAsString(copy, 'lib/i18next/$filename.i18next.dart');
    File file = File('lib/i18next/$filename.i18next.dart');
    await file.writeAsString('abc');

    // await buildStep.writeAsString(
    //     new AssetId(currentAsset.package, 'lib/i18next/$filename.i18next.dart'),
    //     '');
  }

  @override
  final buildExtensions = const {
    '.json': ['.i18next.dart']
  };
}
