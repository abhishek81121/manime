import 'package:json_annotation/json_annotation.dart';

part 'chapter_images_metadata.g.dart';

@JsonSerializable()
class ChapterImagesMetadata {
  final String baseUrl;
  final Chapter chapter;
  ChapterImagesMetadata({required this.baseUrl, required this.chapter});
  factory ChapterImagesMetadata.fromJson(Map<String, dynamic> json) =>
      _$ChapterImagesMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterImagesMetadataToJson(this);
}

@JsonSerializable()
class Chapter {
  final String hash;
  List<String> dataSaver;
  List<String> data;
  Chapter({required this.data, required this.dataSaver, required this.hash});
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
