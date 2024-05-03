import 'package:dio/dio.dart';
import 'package:manime/data/models/manga_search/manga_search.dart';

class MangaSearchRepository {
  MangaSearchRepository();

  Future<Manga> mangaSearch(String mangaSearchText) async {
    final dio = Dio();
    Response response = await dio.get(
        "https://api.mangadex.org/manga?includes[]=cover_art",
        queryParameters: {'title': mangaSearchText});

    if (response.statusCode == 200) {
      if (Manga.fromJson(response.data).data.isEmpty) {
      } else {
        for (Relationships rel
            in Manga.fromJson(response.data).data[0].relationships) {
          print(rel.attributes?.fileName);
        }
      }
      return Manga.fromJson(response.data);
    } else {
      return Manga("", response.statusCode.toString(), []);
    }
  }
}
