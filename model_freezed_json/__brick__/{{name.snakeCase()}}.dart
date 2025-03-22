import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `{{name.snakeCase()}}.dart` with the code generated
// by freezed
part '{{name.snakeCase()}}.freezed.dart';
// optional: since our [{{name.pascalCase()}}] class is serialisable, 
// we must add this line. but if [{{name.pascalCase()}}] was not serialisable, 
// we could skip it.
part '{{name.snakeCase()}}.g.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}({
    /// Documentation for your parameter
    required String placeholder,
  }) = _{{name.pascalCase()}};

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const {{name.pascalCase()}}._();

  /// Converts a JSON [Map] into a [{{name.pascalCase()}}] instance
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}FromJson(json);
}