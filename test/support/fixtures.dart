/// A fixture exercising every branch of the generator: plain keys, nested
/// objects, single/duplicate/multiple interpolations, `count` plurals, object
/// (`{{a.b}}`) and format (`{{a, uppercase}}`) placeholders, a reserved-word
/// key and a key needing character sanitising.
const enUs = '''
{
  "plain": "Hello",
  "nested": {
    "deep": {
      "leaf": "Leaf"
    },
    "sibling": "Sibling"
  },
  "single": "Hi {{name}}",
  "repeated": "{{name}} and {{name}} again",
  "twoParams": "{{target}} combined with {{source}}.",
  "plural": "{{count}} items",
  "pluralWithName": "{{name}} has {{count}} items",
  "objectParam": "Signed by {{user.name}}",
  "formatParam": "Shouting {{word, uppercase}}",
  "return": "Reserved word key",
  "void": "Other reserved word key",
  "needs-sanitising key/(x)": "Sanitised"
}
''';

/// Same keys, but the two-placeholder strings order their placeholders
/// differently -- which is what made the driving locale change the generated
/// method signatures.
const zhHans = '''
{
  "plain": "\\u4f60\\u597d",
  "nested": {
    "deep": {
      "leaf": "\\u53f6"
    },
    "sibling": "\\u5144\\u5f1f"
  },
  "single": "\\u4f60\\u597d {{name}}",
  "repeated": "{{name}} \\u548c {{name}}",
  "twoParams": "{{source}} \\u5df2\\u5408\\u5e76\\u5230 {{target}}\\u3002",
  "plural": "{{count}} \\u9879",
  "pluralWithName": "{{name}} \\u6709 {{count}} \\u9879",
  "objectParam": "\\u7531 {{user.name}} \\u7b7e\\u7f72",
  "formatParam": "\\u5927\\u58f0 {{word, uppercase}}",
  "return": "\\u4fdd\\u7559\\u5b57",
  "void": "\\u53e6\\u4e00\\u4fdd\\u7559\\u5b57",
  "needs-sanitising key/(x)": "\\u5df2\\u6e05\\u7406"
}
''';

const enUsOther = '{"otherKey": "Other"}';
const zhHansOther = '{"otherKey": "\\u5176\\u4ed6"}';

/// Keyed so that `alpha` < `common` < `zeta` alphabetically, across two locales
/// that also sort (`en-US` < `zh-Hans`).
Map<String, String> allAssets() => {
      'pkg|lib/i18next/en-US/alpha.json': enUsOther,
      'pkg|lib/i18next/en-US/common.json': enUs,
      'pkg|lib/i18next/zh-Hans/alpha.json': zhHansOther,
      'pkg|lib/i18next/zh-Hans/common.json': zhHans,
    };
