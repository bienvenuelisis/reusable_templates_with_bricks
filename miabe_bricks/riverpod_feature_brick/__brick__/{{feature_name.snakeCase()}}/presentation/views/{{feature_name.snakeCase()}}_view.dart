import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class {{feature_name.pascalCase()}}View extends ConsumerStatefulWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  ConsumerState<{{feature_name.pascalCase()}}View> createState() =>
      _{{feature_name.pascalCase()}}ViewState();
}


class _{{feature_name.pascalCase()}}ViewState extends ConsumerState<{{feature_name.pascalCase()}}View> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}