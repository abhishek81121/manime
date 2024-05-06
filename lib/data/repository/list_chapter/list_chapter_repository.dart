import 'package:dio/dio.dart';
import 'package:manime/data/models/chapter_list/chapter_list.dart';

class ChapterListSearch {
  ChapterListSearch();
  Future<dynamic> searchChapter(String mangaId, String offset) async {
    final dio = Dio();
    Response response = await dio.get(
        'https://api.mangadex.org/manga/$mangaId/feed?order[chapter]=asc&limit=100&includeFuturePublishAt=0&offset=$offset&translatedLanguage=en&includeExternalUrl=0');
    if (response.statusCode == 200) {
      return ListChapter.fromJson(response.data);
    } else {
      return null;
    }
  }
}
