// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_images_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterImagesMetadata _$ChapterImagesMetadataFromJson(
        Map<String, dynamic> json) =>
    ChapterImagesMetadata(
      baseUrl: json['baseUrl'] as String,
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterImagesMetadataToJson(
        ChapterImagesMetadata instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'chapter': instance.chapter,
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      dataSaver:
          (json['dataSaver'] as List<dynamic>).map((e) => e as String).toList(),
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'hash': instance.hash,
      'dataSaver': instance.dataSaver,
      'data': instance.data,
    };
