import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../views/{{feature_name.snakeCase()}}_view.dart';

class {{feature_name.pascalCase()}}Screen extends ConsumerWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return {{feature_name.pascalCase()}}View();
  }
}
