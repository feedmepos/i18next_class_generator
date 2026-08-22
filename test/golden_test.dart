import 'dart:io';

import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/run_generator.dart';

/// Characterisation test.
///
/// The golden was captured from the generator *before* the sorting change, with
/// the assets already in sorted order, so any difference here means generated
/// code changed for a reason other than ordering.
///
/// The generator formats its output with `package:dart_style`, which is an
/// unpinned `^2.0.0` dependency -- a dart_style release that reflows this code
/// will surface as a failure here. That is worth seeing (it changes what every
/// consumer regenerates), not worth suppressing. Regenerate with:
///
///     dart run tool/update_golden.dart
void main() {
  test('generated output matches the golden', () async {
    final actual = await runGenerator(allAssets());
    final expected = File('test/goldens/expected_output.dart.txt')
        .readAsStringSync()
        .replaceAll('\r\n', '\n');
    expect(actual.replaceAll('\r\n', '\n'), expected);
  });
}
