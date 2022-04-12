import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18next/i18next.dart';
import 'package:intl/intl.dart';

import 'i18next/localizations.i18next.dart';
// import 'localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final List<Locale> locales = const [
    Locale('en', 'US'),
    Locale('pt', 'BR'),
    // TODO: add multi plural language(s)
  ];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale locale;

  @override
  void initState() {
    super.initState();

    locale = widget.locales.first;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I18nu Demo',
      theme: ThemeData(
        dividerTheme: const DividerThemeData(
          color: Colors.black45,
          space: 32.0,
        ),
      ),
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        I18NextLocalizationDelegate(
          locales: widget.locales,
          dataSource: AssetBundleLocalizationDataSource(
            // This is the path for the files declared in pubspec which should
            // contain all of your localizations
            bundlePath: 'i18next',
          ),
          // extra formatting options can be added here
          options: const I18NextOptions(formatter: formatter),
        ),
      ],
      home: MyHomePage(
        supportedLocales: widget.locales,
        onUpdateLocale: updateLocale,
      ),
      locale: locale,
      supportedLocales: widget.locales,
    );
  }

  void updateLocale(Locale newLocale) {
    setState(() {
      locale = newLocale;
    });
  }

  static String formatter(Object value, String? format, Locale? locale) {
    switch (format) {
      case 'uppercase':
        return value.toString().toUpperCase();
      case 'lowercase':
        return value.toString().toLowerCase();
      default:
        if (value is DateTime) {
          return DateFormat(format, locale?.toString()).format(value);
        }
    }
    return value.toString();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.supportedLocales,
    required this.onUpdateLocale,
  }) : super(key: key);

  final List<Locale> supportedLocales;
  final ValueChanged<Locale> onUpdateLocale;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homepageL10n = counter.of(context);
    final counterL10n = homepage.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(homepageL10n.base)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CupertinoSegmentedControl<Locale>(
              children: {
                for (var e in widget.supportedLocales) e: Text(e.toString())
              },
              groupValue: Localizations.localeOf(context),
              onValueChanged: widget.onUpdateLocale,
            ),
            const Divider(),
            Text(
              homepageL10n.nested,
              style: theme.textTheme.headline6,
            ),
            Text(
              homepageL10n.interpolation("weirdddd"),
              style: theme.textTheme.subtitle2,
            ),
            CupertinoSegmentedControl<String>(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: const {
                'male': Text('MALE'),
                'female': Text('FEMALE'),
                '': Text('OTHER'),
              },
              groupValue: _gender,
              onValueChanged: updateGender,
            ),
            Text(homepageL10n
                .interpolationNested({"key1": "doge", "key2": "doge2"})),
            const Divider(),
            Text(
              homepageL10n.nesting,
              style: theme.textTheme.headline4,
            ),
            TextButton(
              onPressed: resetCounter,
              child: Text(homepageL10n.plural_plural(69, 'doge')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: homepageL10n.interpolation("stuff"),
        child: const Icon(Icons.add),
      ),
    );
  }

  void incrementCounter() => setState(() => _counter++);

  void resetCounter() => setState(() => _counter = 0);

  void updateGender(String gender) => setState(() => _gender = gender);
}
