For flutter i18next package (https://pub.dev/packages/i18next) for internationalization.
It doesn't generate reference file, so that we have to use magic string in our dart file.
To solve this problem, we build this package to generate reference file for us.

## Features

This package used to generate the localizations reference file from the json.

## Usage

We use build_runner to generate reference code.
Simply run "flutter pub run build_runner build" in the example directory to generate the localizations dart file from the json.
