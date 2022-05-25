import 'package:i18next/i18next.dart';

class I18n {
  I18n(this.i18next);

  final I18Next i18next;

  static I18n of(context) {
    return I18n(I18Next.of(context)!);
  }

  _Example get example {
    return _Example(i18next);
  }
}

class _ExampleNested {
  _ExampleNested(this.i18next);

  final I18Next i18next;

  String get nestedkey1 {
    return i18next.t('example:nested.nestedKey1');
  }

  String get nestedkey2 {
    return i18next.t('example:nested.nestedKey2');
  }
}

class _Example {
  _Example(this.i18next);

  final I18Next i18next;

  String get base {
    return i18next.t('example:base');
  }

  String interpolation(object) {
    return i18next.t(
      'example:interpolation',
      variables: {"object": object},
    );
  }

  String interpolationNested(object) {
    return i18next.t(
      'example:interpolationNested',
      variables: {"object": object},
    );
  }

  String formatting(word) {
    return i18next.t(
      'example:formatting',
      variables: {"word": word},
    );
  }

  String get nesting {
    return i18next.t('example:nesting');
  }

  String item(count) {
    return i18next.t('example:item', count: count);
  }

  String item_plural(count) {
    return i18next.t('example:item_plural', count: count);
  }

  String plural(count, object) {
    return i18next.t('example:plural',
        variables: {"object": object}, count: count);
  }

  String plural_plural(count, object) {
    return i18next.t('example:plural_plural',
        variables: {"object": object}, count: count);
  }

  _ExampleNested get nested {
    return _ExampleNested(i18next);
  }

  String nestingNested(surprise_object) {
    return i18next.t(
      'example:nestingNested',
      variables: {"surprise_object": surprise_object},
    );
  }
}
