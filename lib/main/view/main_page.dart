import 'package:flutter/material.dart';
import 'package:flutter_training/main/view/appbar_text_field_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../view_model/appbar_text_provider.dart';
import 'package:flutter_training/main/view_model/repository_api_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'search_result_content.dart';

class MainPage extends HookConsumerWidget {
  MainPage({Key? key}) : super(key: key);
  final controller = useTextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRef
    // 取得したAPIデータの監視
    final asyncValue = ref.watch(listProvider);
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: asyncValue.when(
          data: (data) {
            return ListView.separated(
              itemCount: 100,
              itemBuilder: (context, index) {
                // null非許容型としてキャストする
                final elements = data![index];
                // Nullチェックを行う
                return SearchResultListTile(
                  stargazersCount: elements.stargazersCount ?? 0,
                  description: elements.description ?? '',
                  name: elements.name ?? '',
                  index: index + 1,
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: .5,
                );
              },
            );
          },
          loading: () => const CircularProgressIndicator(
            color: Colors.white,
          ),
          error: (error, _) => Text(error.toString()),
        ),
      ),
    );
  }
}
