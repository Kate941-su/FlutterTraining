import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/appbar_text.dart';

class TextPageStateNotifier extends StateNotifier<AppbarText> {
  final Ref ref;
  TextPageStateNotifier(this.ref) : super(const AppbarText());

  void setText(String text) {
    state = state.copyWith(text: text);
  }

}
