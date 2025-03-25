import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/in_memory_users_repo.dart';

final usersInMemoryRepoProvider = Provider<IUsersRepo>((ref) {
  return InMemoryUsersRepo();
});

