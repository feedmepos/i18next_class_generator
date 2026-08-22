import 'dart:io';

import '../test/support/fixtures.dart';
import '../test/support/run_generator.dart';

Future<void> main() async {
  final output = await runGenerator(allAssets());
  File('test/goldens/expected_output.dart.txt').writeAsStringSync(output);
  stdout.writeln('wrote test/goldens/expected_output.dart.txt');
}
