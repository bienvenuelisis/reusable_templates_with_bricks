import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/in_memory_{{model_name.snakeCase()}}s_repo.dart';

final {{model_name.camelCase()}}sInMemoryRepoProvider = Provider<I{{model_name.pascalCase()}}sRepo>((ref) {
  return InMemory{{model_name.pascalCase()}}sRepo();
});

