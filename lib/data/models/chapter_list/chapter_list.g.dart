// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListChapter _$ListChapterFromJson(Map<String, dynamic> json) => ListChapter(
      data: (json['data'] as List<dynamic>)
          .map((e) => ListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListChapterToJson(ListChapter instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ListData _$ListDataFromJson(Map<String, dynamic> json) => ListData(
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ListDataToJson(ListData instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      chapter: json['chapter'] as String,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'title': instance.title,
    };
