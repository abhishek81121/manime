import 'package:dio/dio.dart';
import 'package:manime/data/models/chapter_image/chapter_image.dart';

class ChapterImageList {
  ChapterImageList();
  Future<dynamic> getMangaImagesList(String chapterId) async {
    final dio = Dio();
    Response response =
        await dio.get('https://api.mangadex.org/at-home/server/$chapterId');
    if (response.statusCode == 200) {
      return ChapterImage.fromJson(response.data);
    } else {
      return null;
    }
  }
}
