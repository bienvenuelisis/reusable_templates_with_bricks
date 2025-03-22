import '../data/models/{{model_name.snakeCase()}}.dart';
import '../data/models/{{model_name.snakeCase()}}_data.dart';

export '../data/models/{{model_name.snakeCase()}}.dart';
export '../data/models/{{model_name.snakeCase()}}_data.dart';

abstract class I{{model_name.pascalCase()}}sRepo {
  Future<List<{{model_name.pascalCase()}}>> getAll();

  Future<{{model_name.pascalCase()}}?> find(String id);

  Future<String?> create({{model_name.pascalCase()}}Data {{model_name.camelCase()}}Data);

  Future<bool> update({{model_name.pascalCase()}} {{model_name.camelCase()}});

  Future<{{model_name.pascalCase()}}?> delete(String id);
}
