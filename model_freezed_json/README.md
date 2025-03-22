# model_freezed_json

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

Generate a model that uses `freezed` and `json_serializable`.

## Install 🚀

You need to have `mason_cli` installed. You can install by running `dart pub global activate mason_cli`.

Then run `mason add model_freezed_json` to install the brick from the [registry](https://brickhub.dev/). You can also [install](https://pub.dev/packages/mason_cli#adding-bricks) from a local path after cloning this repository to your machine, or install from the git repository URL.

## How to use

You need `build_runner` to generate the `*.freezed.dart` and `*.g.dart` files. Make sure that the `build_runner` is in your `dev_dependencies` of the `pubspec.yaml` file.
Run `dart run build_runner build` in your project after creating the model.

`mason make model_freezed_json --name <your model name> -o <your output path>`

Here is the sample output of the brick when you run the above command with `--name person`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `person.dart` with the code generated
// by freezed
part 'person.freezed.dart';
// optional: since our [Person] class is serialisable, 
// we must add this line. but if [Person] was not serialisable, 
// we could skip it.
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    /// Documentation for your parameter
    required String placeholder,
  }) = _Person;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const Person._();

  /// Converts a JSON [Map] into a [Person] instance
  factory Person.fromJson(Map<String, dynamic> json) =>
      _$PersonFromJson(json);
}
```