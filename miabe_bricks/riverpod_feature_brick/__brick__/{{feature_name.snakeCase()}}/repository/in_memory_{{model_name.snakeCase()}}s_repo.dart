import '../data/models/{{model_name.snakeCase()}}.dart';
import '../data/models/{{model_name.snakeCase()}}_data.dart';

class InMemory{{model_name.pascalCase()}}sRepo extends I{{model_name.pascalCase()}}sRepo {

  final List<{{model_name.pascalCase()}}> _{{model_name.camelCase()}}s = [];

  Future<List<{{model_name.pascalCase()}}>> getAll() async {
    return _{{model_name.camelCase()}}s;
  }

  Future<{{model_name.pascalCase()}}?> find(String id) async {
    return _{{model_name.camelCase()}}s.firstWhere((element) => element.id == id, orElse: () => null);
  }

  Future<String?> create({{model_name.pascalCase()}}Data {{model_name.camelCase()}}Data) async {
    final {{model_name.pascalCase()}} {const const {model_name.camelCase()}} = {{model_name.pascalCase()}}(
      id: Uuid().v4(),
      placeholder: {{model_name.camelCase()}}Data.placeholder,
    );
    _{{model_name.camelCase()}}s.add({{model_name.camelCase()}});
    return {{model_name.camelCase()}}.id;
  }

  Future<bool> update({{model_name.pascalCase()}} {{model_name.camelCase()}}) async {
    final index = _{{model_name.camelCase()}}s.indexWhere((element) => element.id == {{model_name.camelCase()}}.id);
    if (index == -1) {
      return false;
    }
    _{{model_name.camelCase()}}s[index] = {{model_name.camelCase()}};
    return true;
  }

  Future<{{model_name.pascalCase()}}?> delete(String id) async {
    final index = _{{model_name.camelCase()}}s.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return _{{model_name.camelCase()}}s.removeAt(index);
  }
}
