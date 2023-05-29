import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/text_page_state.dart';
import 'repository_api_client.dart';

final textProvider =
    StateNotifierProvider<TextPageStateNotifier, TextPageState>(
        (ref) => TextPageStateNotifier(ref));

class TextPageStateNotifier extends StateNotifier<TextPageState> {
  final Ref ref;

  TextPageStateNotifier(this.ref) : super(const TextPageState());

  final controller = TextEditingController();

  void submit() {
    String query = 'https://api.github.com/search/repositories?q=${controller.text}&per_page=100';
    RepositoryApiClient api = RepositoryApiClient();
    dynamic list = api.fetchList(query);
  }
}
