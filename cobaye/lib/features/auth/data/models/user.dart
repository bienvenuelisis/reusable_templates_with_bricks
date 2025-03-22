import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `user.dart` with the code generated
// by freezed
part 'user.freezed.dart';
// optional: since our [User] class is serialisable, 
// we must add this line. but if [User] was not serialisable, 
// we could skip it.
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    /// Documentation for your parameter
    required String id,
    required String placeholder,
  }) = _User;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const User._();

  /// Converts a JSON [Map] into a [User] instance
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}