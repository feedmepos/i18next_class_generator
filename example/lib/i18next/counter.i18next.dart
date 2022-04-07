class CounterL10n {
  const CounterL10n(this.i18next);

  final I18Next i18next;

  static CounterL10n of(BuildContext context) =>
      CounterL10n(I18Next.of(context)!);

  String clicked(int count) => i18next.t('counter:clicked', count: count);

  String get clickMe => i18next.t('counter:clickMe');

  String get resetCounter => i18next.t('counter:resetCounter');
}
