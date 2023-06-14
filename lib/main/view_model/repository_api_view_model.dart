import 'package:flutter_training/main/model/repository_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/main/view_model/appbar_text_provider.dart';
import 'package:flutter_training/main/view_model/repository_api_repository_provider.dart';




// 上記を非同期で管理する
// FutureProvider : 非同期処理を行うのに適しているプロバイダ
// FutureProviderの型Tには状態を管理したい対象の型を入れる
final listProvider = FutureProvider<List<RepositoryItems>?>((ref) async {
  final text = ref.watch(appBarTextProvider);
  String query = 'https://api.github.com/search/repositories?q=${text.text}&per_page=100';
  return await ref.read(repositoryApiRepositoryProvider).fetchList(query);
});
