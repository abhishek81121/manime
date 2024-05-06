import 'package:json_annotation/json_annotation.dart';

part 'chapter_image.g.dart';

@JsonSerializable()
class ChapterImage {
  final String baseUrl;
  final Chapter chapter;
  ChapterImage({required this.baseUrl, required this.chapter});
  factory ChapterImage.fromJson(Map<String, dynamic> json) =>
      _$ChapterImageFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterImageToJson(this);
}

@JsonSerializable()
class Chapter {
  final String hash;
  List<String> datasaver;
  Chapter({required this.datasaver, required this.hash});
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
