import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/main/view_model/appbar_text_provider.dart';
import '../model/appbar_text.dart';

class TextPageStateNotifier extends StateNotifier<AppbarText> {
  final Ref ref;
  TextPageStateNotifier(this.ref) : super(const AppbarText());

  void onTapMainSearchButton(String text) {
    String debugText = ref.read(appBarTextProvider.notifier).state.text;
  }

  void setText(String text) {
    state = state.copyWith(text: text);
  }

}
