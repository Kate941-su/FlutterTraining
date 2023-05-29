import 'package:flutter_training/repository_api_client.dart';
import 'package:flutter_training/repository_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// RepositoryApiClient(APIの取得)の状態を管理する
final repositoryApiClientProvider = Provider((ref) => RepositoryApiClient());

// 上記を非同期で管理する
// FutureProvider : 非同期処理を行うのに適しているプロバイダ
final listProvider = FutureProvider<List<RepositoryItems>?>((ref) async {
  final repositoryApiClient = ref.read(repositoryApiClientProvider);
  return await repositoryApiClient.fetchList();
});