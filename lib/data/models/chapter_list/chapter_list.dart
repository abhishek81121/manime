import 'package:json_annotation/json_annotation.dart';

part 'chapter_list.g.dart';

@JsonSerializable()
class ListChapter {
  final String id;
  final Attributes attribute;
  ListChapter({required this.attribute, required this.id});
  factory ListChapter.fromJson(Map<String, dynamic> json) =>
      _$ListChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ListChapterToJson(this);
}

@JsonSerializable()
class Attributes {
  final String chapter;
  final String title;
  Attributes({required this.chapter, required this.title});
  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
