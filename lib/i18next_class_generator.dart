// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: import_of_legacy_library_into_null_safe
import 'package:build/build.dart';
import 'package:path/path.dart' show join, basenameWithoutExtension;

Builder i18NextClassGenerator(BuilderOptions options) =>
    I18NextClassGenerator();

class I18NextClassGenerator implements Builder {
  @override
  Future build(BuildStep buildStep) async {
    // Each [buildStep] has a single input.
    AssetId currentAsset = buildStep.inputId;
    print('discover ${buildStep.inputId}');
    var filename = basenameWithoutExtension(buildStep.inputId.toString());
    await buildStep.writeAsString(
        new AssetId(currentAsset.package, 'lib/i18next/$filename.i18next.dart'),
        '');
  }

  @override
  final buildExtensions = const {
    '.json': ['.i18next.dart']
  };
}
