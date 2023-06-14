import 'appbar_text_view_model.dart';
import '../model/appbar_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final appBarTextProvider =
StateNotifierProvider<TextPageStateNotifier, AppbarText>(
        (ref) => TextPageStateNotifier(ref));