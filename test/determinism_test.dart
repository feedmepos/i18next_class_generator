import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/run_generator.dart';

/// Permutations of the same asset set. `findAssets` makes no order guarantee --
/// build_runner backs it with a `dart:io` directory crawl on a cold graph and
/// with the persisted asset graph's node insertion order on an incremental
/// build -- so the generator must not depend on the order it receives.
final _permutations = <String, List<String>>{
  'sorted': [
    'pkg|lib/i18next/en-US/alpha.json',
    'pkg|lib/i18next/en-US/common.json',
    'pkg|lib/i18next/zh-Hans/alpha.json',
    'pkg|lib/i18next/zh-Hans/common.json',
  ],
  'reversed': [
    'pkg|lib/i18next/zh-Hans/common.json',
    'pkg|lib/i18next/zh-Hans/alpha.json',
    'pkg|lib/i18next/en-US/common.json',
    'pkg|lib/i18next/en-US/alpha.json',
  ],
  'non-base locale first': [
    'pkg|lib/i18next/zh-Hans/alpha.json',
    'pkg|lib/i18next/en-US/common.json',
    'pkg|lib/i18next/zh-Hans/common.json',
    'pkg|lib/i18next/en-US/alpha.json',
  ],
  'namespaces interleaved': [
    'pkg|lib/i18next/en-US/common.json',
    'pkg|lib/i18next/zh-Hans/common.json',
    'pkg|lib/i18next/en-US/alpha.json',
    'pkg|lib/i18next/zh-Hans/alpha.json',
  ],
};

Map<String, String> _ordered(List<String> keys) {
  final all = allAssets();
  return {for (final key in keys) key: all[key]!};
}

void main() {
  test('output is identical for every input order', () async {
    final outputs = <String, String>{};
    for (final entry in _permutations.entries) {
      outputs[entry.key] = await runGenerator(_ordered(entry.value));
    }
    final baseline = outputs['sorted']!;
    for (final entry in outputs.entries) {
      expect(entry.value, baseline,
          reason: 'input order "${entry.key}" produced different output');
    }
  });

  test('the alphabetically first locale drives the generated API', () async {
    for (final entry in _permutations.entries) {
      final out = await runGenerator(_ordered(entry.value));
      // en-US reads "{{target}} combined with {{source}}.", zh-Hans reverses
      // the two placeholders. Parameters are emitted positionally in the order
      // the placeholders appear, so this pins the driving locale.
      expect(out, contains('String twoParams(target, source)'),
          reason: 'input order "${entry.key}" did not generate from en-US');
    }
  });

  test('namespace getters are emitted in alphabetical order', () async {
    for (final entry in _permutations.entries) {
      final out = await runGenerator(_ordered(entry.value));
      expect(out.indexOf('_Alpha get alpha'),
          lessThan(out.indexOf('_Common get common')),
          reason: 'input order "${entry.key}" emitted namespaces out of order');
    }
  });
}
