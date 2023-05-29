import 'repository_items.dart';
import 'package:dio/dio.dart';

class RepositoryApiClient {
  Future<List<RepositoryItems>?> fetchList() async {
    print('hello');
    final dio = Dio();
    const url =
        'https://api.github.com/search/repositories?q=flutter&per_page=100';
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      try {
        final data = response.data['items'] as List<dynamic>;
        // APIから取得したJSONファイルをリストに変換する
        // fromJson : jsonのデコード
        final list = data.map((e) => RepositoryItems.fromJson(e)).toList();
        return list;
      } catch (e) {
        throw e;
      }
    } else {
      print('bad request');
    }
  }
}
