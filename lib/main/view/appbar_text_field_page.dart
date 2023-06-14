import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../view_model/appbar_text_provider.dart';

class AppbarTextFieldPage extends HookConsumerWidget {
  AppbarTextFieldPage({
    Key? key,
  }) : super(key: key);
  final controller = useTextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        controller: controller,
      ),
      actions: [
        IconButton(
            onPressed: () {
              ref.read(appBarTextProvider.notifier).setText(controller.text);
            },
            icon: const Icon(Icons.search))
      ],
    );
  }
}