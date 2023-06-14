import '../model/repository_items.dart';
import 'package:dio/dio.dart';

class RepositoryApiRepository {
  Future<List<RepositoryItems>?> fetchList(String query) async {
    final dio = Dio();
    final response = await dio.get(query);
    try {
    if (response.statusCode == 200) {
        final data = response.data['items'] as List<dynamic>;
        // APIから取得したJSONファイルをリストに変換する
        // fromJson : jsonのデコード
        final list = data.map((e) => RepositoryItems.fromJson(e)).toList();
        return list;
      } else {
        return [];
      }
    } catch(e) {
      return [];
    }
  }
}
