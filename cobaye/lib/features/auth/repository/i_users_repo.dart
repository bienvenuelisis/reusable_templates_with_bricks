import '../data/models/user.dart';
import '../data/models/user_data.dart';

export '../data/models/user.dart';
export '../data/models/user_data.dart';

abstract class IUsersRepo {
  Future<List<User>> getAll();

  Future<User?> find(String id);

  Future<String?> create(UserData userData);

  Future<bool> update(User user);

  Future<User?> delete(String id);
}
