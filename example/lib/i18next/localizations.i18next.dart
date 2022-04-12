import 'package:i18next/i18next.dart';
import 'package:flutter/widgets.dart';

class counter {
  counter(this.i18next);

  final I18Next i18next;

  static of(context) {
    return counter(I18Next.of(context)!);
  }

  get base {
    return i18next.t('counter:base');
  }

  interpolation(object) {
    return i18next.t(
      'counter:interpolation',
      variables: {"object": object},
    );
  }

  interpolationNested(object) {
    return i18next.t(
      'counter:interpolationNested',
      variables: {"object": object},
    );
  }

  formatting(word) {
    return i18next.t(
      'counter:formatting',
      variables: {"word": word},
    );
  }

  get nesting {
    return i18next.t('counter:nesting');
  }

  item(count) {
    return i18next.t('counter:item', count: count);
  }

  item_plural(count) {
    return i18next.t('counter:item_plural', count: count);
  }

  plural(count, object) {
    return i18next.t('counter:plural',
        variables: {"object": object}, count: count);
  }

  plural_plural(count, object) {
    return i18next.t('counter:plural_plural',
        variables: {"object": object}, count: count);
  }

  get nested {
    return i18next.t('counter:nested.nestedKey1');
  }

  nestingNested(surprise_object) {
    return i18next.t(
      'counter:nestingNested',
      variables: {"surprise_object": surprise_object},
    );
  }
}

class homepage {
  homepage(this.i18next);

  final I18Next i18next;

  static of(context) {
    return homepage(I18Next.of(context)!);
  }

  get genderMessage {
    return i18next.t('homepage:genderMessage');
  }

  get genderMessage_female {
    return i18next.t('homepage:genderMessage_female');
  }

  get genderMessage_male {
    return i18next.t('homepage:genderMessage_male');
  }

  today(date) {
    return i18next.t(
      'homepage:today',
      variables: {"date": date},
    );
  }

  helloMessage(name, world) {
    return i18next.t(
      'homepage:helloMessage',
      variables: {"name": name, "world": world},
    );
  }

  get title {
    return i18next.t('homepage:title');
  }
}
