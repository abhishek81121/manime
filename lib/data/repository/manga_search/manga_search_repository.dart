import 'package:dio/dio.dart';
import 'package:manime/data/models/manga_search/manga_search.dart';

class MangaSearchRepository {
  MangaSearchRepository();

  Future<Manga> mangaSearch(String mangaSearchText) async {
    final dio = Dio();
    Response response = await dio.get(
        "https://api.mangadex.org/manga?includes[]=cover_art&order[followedCount]=desc",
        queryParameters: {'title': mangaSearchText});

    if (response.statusCode == 200) {
      return Manga.fromJson(response.data);
    } else {
      return Manga("", response.statusCode.toString(), []);
    }
  }
}
