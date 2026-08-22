## 0.0.4
* sort the glob matches by path so the generated file is reproducible -- class
  order no longer depends on filesystem or asset-graph iteration order, and the
  locale that drives generation is now deterministically the alphabetically
  first locale directory (`en-US` in a typical `en-US`/`zh-Hans` layout)
  instead of whichever directory the crawl reached first

## 0.0.3
* fix dart environment

## 0.0.2
* allow configure glob pattern for the json and output file

## 0.0.1
* Run `dart run build_runner build` or run `flutter pub run build_runner build` to generate the class from json
