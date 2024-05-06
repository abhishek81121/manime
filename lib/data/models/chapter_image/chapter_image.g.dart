// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterImage _$ChapterImageFromJson(Map<String, dynamic> json) => ChapterImage(
      baseUrl: json['baseUrl'] as String,
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterImageToJson(ChapterImage instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'chapter': instance.chapter,
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      datasaver:
          (json['datasaver'] as List<dynamic>).map((e) => e as String).toList(),
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'hash': instance.hash,
      'datasaver': instance.datasaver,
    };
