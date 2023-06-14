import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/appbar_text_provider.dart';
class AppbarTextFieldPage extends ConsumerWidget {
  // member variables

  const AppbarTextFieldPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appbarText = ref.watch(appBarTextProvider);
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
            // TextFieldの見た目の設定
            suffixIcon: IconButton(
          onPressed: () {
            final mockArg = 'github';
            ref.read(appBarTextProvider.notifier).onTapMainSearchButton(mockArg);
          },
          icon: const Icon(Icons.clear),
        )),
        onChanged: (value) {},
      ),
    );
  }
}
