import 'package:dio/dio.dart';
import 'package:manime/data/models/chapter_list/chapter_list.dart';

class ChapterListSearch {
  ChapterListSearch();
  Future<dynamic> searchChapter(String mangaId, String offset, String) async {
    final dio = Dio();
    Response response = await dio.get(
        'https://api.mangadex.org/manga/$mangaId/feed?order[chapter]=desc&limit=100&includeFuturePublishAt=0');
    if (response.statusCode == 200) {
      return ListChapter.fromJson(response.data);
    } else {
      return null;
    }
  }
}
