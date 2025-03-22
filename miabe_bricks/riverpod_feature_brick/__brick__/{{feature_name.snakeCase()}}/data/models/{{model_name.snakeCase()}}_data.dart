import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `{{model_name.snakeCase()}}_data.dart` with the code generated
// by freezed
part '{{model_name.snakeCase()}}_data.freezed.dart';
// optional: since our [{{model_name.pascalCase()}}Data] class is serializable, 
// we must add this line. but if [{{model_name.pascalCase()}}Data] was not 
// serializable,  we could skip it.
part '{{model_name.snakeCase()}}_data.g.dart';

@freezed
class {{model_name.pascalCase()}}Data with _${{model_name.pascalCase()}}Data {
  const factory {{model_name.pascalCase()}}Data({
    /// Documentation for your parameter
    required String placeholder,
  }) = _{{model_name.pascalCase()}}Data;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const {{model_name.pascalCase()}}Data._();

  /// Converts a JSON [Map] into a [{{model_name.pascalCase()}}Data] instance
  factory {{model_name.pascalCase()}}Data.fromJson(Map<String, dynamic> json) =>
      _${{model_name.pascalCase()}}DataFromJson(json);
}