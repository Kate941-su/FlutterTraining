import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'repository_items.freezed.dart';

part 'repository_items.g.dart';

@freezed
class RepositoryItems with _$RepositoryItems {
  factory RepositoryItems({
    String? name,
    String? description,
    int? stargazers_count,
  }) = _RepositoryItems;

  factory RepositoryItems.fromJson(Map<String, dynamic> json) =>
      _$RepositoryItemsFromJson(json);
}
