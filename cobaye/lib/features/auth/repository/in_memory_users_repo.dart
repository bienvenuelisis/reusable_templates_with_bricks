import 'package:uuid/uuid.dart';

import './i_users_repo.dart';

class InMemoryUsersRepo extends IUsersRepo {

  final List<User> _users = [];

  @override
  Future<List<User>> getAll() async {
    return _users;
  }

  @override
  Future<User?> find(String id) async {
    try {
      return _users.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }


  @override
  Future<String?> create(UserData userData) async {
    final User user = User(
      id: Uuid().v4(),
      placeholder: userData.placeholder,
    );
    _users.add(user);
    return user.id;
  }

  @override
  Future<bool> update(User user) async {
    final index = _users.indexWhere((element) => element.id == user.id);
    if (index == -1) {
      return false;
    }
    _users[index] = user;
    return true;
  }

  @override
  Future<User?> delete(String id) async {
    final index = _users.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return _users.removeAt(index);
  }
}
