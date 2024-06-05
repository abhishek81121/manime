import 'package:dio/dio.dart';
import 'package:manime/data/models/chapter_images_metadat/chapter_images_metadata.dart';

class ChapterImageList {
  ChapterImageList();
  Future<dynamic> getMangaImagesList(String chapterId) async {
    final dio = Dio();
    Response response =
        await dio.get('https://api.mangadex.org/at-home/server/$chapterId');
    if (response.statusCode == 200) {
      return ChapterImagesMetadata.fromJson(response.data);
    } else {
      return null;
    }
  }
}
