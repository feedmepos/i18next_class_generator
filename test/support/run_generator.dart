import 'dart:io';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:i18next_class_generator/i18next_class_generator.dart';
import 'package:path/path.dart' as p;

/// Runs [I18NextClassGenerator] over [assets] and returns the generated source.
///
/// The builder writes its output with `dart:io` (`File(outFile)`) rather than
/// `buildStep.writeAsString`, so the result never reaches build_test's writer.
/// Pointing `out_file` at an absolute path in a scratch directory sidesteps that
/// without touching the process-wide working directory.
Future<String> runGenerator(Map<String, String> assets) async {
  final tmp = Directory.systemTemp.createTempSync('i18next_class_generator');
  try {
    final outFile = p.join(tmp.path, 'generated.dart');
    final builder = i18NextClassGeneratorFactory(BuilderOptions({
      'glob_pattern': 'lib/i18next/**/*.json',
      'out_file': outFile,
    }));
    await testBuilder(builder, assets, rootPackage: 'pkg');
    return File(outFile).readAsStringSync();
  } finally {
    tmp.deleteSync(recursive: true);
  }
}
