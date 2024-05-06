// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListChapter _$ListChapterFromJson(Map<String, dynamic> json) => ListChapter(
      attribute: Attributes.fromJson(json['attribute'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ListChapterToJson(ListChapter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute': instance.attribute,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      chapter: json['chapter'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'title': instance.title,
    };
