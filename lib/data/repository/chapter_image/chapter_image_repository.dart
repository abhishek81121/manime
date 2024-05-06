import 'package:dio/dio.dart';
import 'package:manime/data/models/chapter_image/chapter_image.dart';

class ChapterImageList {
  ChapterImageList();
  Future<dynamic> getMangaImagesList(String chapter_id) async {
    final dio = Dio();
    Response response =
        await dio.get('https://api.mangadex.org/at-home/server/${chapter_id}');
    if (response.statusCode == 200) {
      return ChapterImage.fromJson(response.data);
    } else {
      return null;
    }
  }
}
