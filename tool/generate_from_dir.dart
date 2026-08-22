// Runs the generator over a real consumer's localizations tree, so the output
// can be diffed against what that consumer has committed.
//
//   dart run tool/generate_from_dir.dart <localizations-dir> <out-file> [shuffle-seed]
//
// Without a seed the json files are fed in sorted order; with one they are
// shuffled deterministically, which is how the pre-sort generator's
// order-dependence was demonstrated (five seeds, five different outputs).
import 'dart:io';
import 'dart:math';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:i18next_class_generator/i18next_class_generator.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  if (args.length < 2) {
    stderr.writeln('usage: dart run tool/generate_from_dir.dart '
        '<localizations-dir> <out-file> [shuffle-seed]');
    exitCode = 64;
    return;
  }
  final root = args[0];
  final out = p.absolute(args[1]);
  final seed = args.length > 2 ? int.parse(args[2]) : null;

  final files = Directory(root)
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.json'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  if (seed != null) files.shuffle(Random(seed));

  final assets = <String, String>{};
  for (final file in files) {
    // Asset ids always use POSIX separators; on Windows p.relative returns `\`.
    final relative = p.split(p.relative(file.path, from: root)).join('/');
    assets['pkg|lib/i18next/$relative'] = file.readAsStringSync();
  }

  final builder = i18NextClassGeneratorFactory(BuilderOptions({
    'glob_pattern': 'lib/i18next/**/*.json',
    'out_file': out,
  }));
  await testBuilder(builder, assets, rootPackage: 'pkg');
  stdout.writeln('${assets.length} json files -> $out');
}
