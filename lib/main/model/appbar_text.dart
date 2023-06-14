import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'appbar_text.freezed.dart';

@freezed
class AppbarText with _$AppbarText {
  const factory AppbarText({
    @Default("") String text,
}) = _AppbarText;
}