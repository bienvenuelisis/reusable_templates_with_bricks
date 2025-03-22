import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `{{model_name.snakeCase()}}.dart` with the code generated
// by freezed
part '{{model_name.snakeCase()}}.freezed.dart';
// optional: since our [{{model_name.pascalCase()}}] class is serialisable, 
// we must add this line. but if [{{model_name.pascalCase()}}] was not serialisable, 
// we could skip it.
part '{{model_name.snakeCase()}}.g.dart';

@freezed
class {{model_name.pascalCase()}} with _${{model_name.pascalCase()}} {
  const factory {{model_name.pascalCase()}}({
    /// Documentation for your parameter
    required String placeholder,
  }) = _{{model_name.pascalCase()}};

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const {{model_name.pascalCase()}}._();

  /// Converts a JSON [Map] into a [{{model_name.pascalCase()}}] instance
  factory {{model_name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{model_name.pascalCase()}}FromJson(json);
}