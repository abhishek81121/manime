import 'package:json_annotation/json_annotation.dart';

part 'chapter_list.g.dart';

@JsonSerializable()
class ListChapter {
  List<ListData> data;
  ListChapter({required this.data});
  factory ListChapter.fromJson(Map<String, dynamic> json) =>
      _$ListChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ListChapterToJson(this);
}

@JsonSerializable()
class ListData {
  final String id;
  final Attributes attributes;
  ListData({required this.attributes, required this.id});
  factory ListData.fromJson(Map<String, dynamic> json) =>
      _$ListDataFromJson(json);
  Map<String, dynamic> toJson() => _$ListDataToJson(this);
}

@JsonSerializable()
class Attributes {
  final String chapter;
  final String? title;
  Attributes({required this.chapter, required this.title});
  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
