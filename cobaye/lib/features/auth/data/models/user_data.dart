import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `user_data.dart` with the code generated
// by freezed
part 'user_data.freezed.dart';
// optional: since our [UserData] class is serializable, 
// we must add this line. but if [UserData] was not 
// serializable,  we could skip it.
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    /// Documentation for your parameter
    required String placeholder,
  }) = _UserData;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const UserData._();

  /// Converts a JSON [Map] into a [UserData] instance
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}