import 'package:i18next/i18next.dart';
import 'package:flutter/widgets.dart';

class counter {
  counter(this.i18next);

  final I18Next i18next;

  get clickMe {
    return i18next.t('counter:clickMe');
  }

  get clicked {
    return i18next.t('counter:clicked');
  }

  get clicked_plural {
    return i18next.t('counter:clicked_plural');
  }

  get resetCounter {
    return i18next.t('counter:resetCounter');
  }

  get nested {
    return i18next.t('counter:nested');
  }

  get grouped_key {
    return i18next.t('counter:grouped_key');
  }
}

class homepage {
  homepage(this.i18next);

  final I18Next i18next;

  get genderMessage {
    return i18next.t('homepage:genderMessage');
  }

  get genderMessage_female {
    return i18next.t('homepage:genderMessage_female');
  }

  get genderMessage_male {
    return i18next.t('homepage:genderMessage_male');
  }

  get today {
    return i18next.t('homepage:today');
  }

  get helloMessage {
    return i18next.t('homepage:helloMessage');
  }

  get title {
    return i18next.t('homepage:title');
  }
}
