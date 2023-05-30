import 'package:flutter_training/repository_api_client.dart';
import 'package:flutter_training/repository_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// RepositoryApiClient(APIの取得)の状態を管理する
final repositoryApiClientProvider = Provider((ref) => RepositoryApiClient());

// 上記を非同期で管理する
// FutureProvider : 非同期処理を行うのに適しているプロバイダ
// FutureProviderの型Tには状態を管理したい対象の型を入れる
final listProvider = FutureProvider<List<RepositoryItems>?>((ref) async {
  String initQuery =
      'https://api.github.com/search/repositories?q=flutter&per_page=100';
  final repositoryApiClient = ref.read(repositoryApiClientProvider);
  return await repositoryApiClient.fetchList(initQuery);
});
