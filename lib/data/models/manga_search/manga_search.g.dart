// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      json['result'] as String,
      json['response'] as String,
      (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'result': instance.result,
      'response': instance.response,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['id'] as String,
      json['type'] as String,
      Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      (json['relationships'] as List<dynamic>)
          .map((e) => Relationships.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      json['isLocked'] as bool?,
      json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      json['originalLanguage'] as String?,
      json['publicationDemographic'] as String?,
      json['status'] as String?,
      json['year'] as int?,
      json['contentRating'] as String?,
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['latestUploadedChapter'] as String?,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'isLocked': instance.isLocked,
      'links': instance.links,
      'originalLanguage': instance.originalLanguage,
      'publicationDemographic': instance.publicationDemographic,
      'status': instance.status,
      'year': instance.year,
      'contentRating': instance.contentRating,
      'tags': instance.tags,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'latestUploadedChapter': instance.latestUploadedChapter,
    };

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      json['id'] as String?,
      json['type'] as String?,
      json['attributes'] == null
          ? null
          : TagAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      (json['relationships'] as List<dynamic>?)
          ?.map((e) => Relationships.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'en': instance.en,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      json['al'] as String?,
      json['ap'] as String?,
      json['bw'] as String?,
      json['kt'] as String?,
      json['mu'] as String?,
      json['nu'] as String?,
      json['amz'] as String?,
      json['cdj'] as String?,
      json['ebj'] as String?,
      json['mal'] as String?,
      json['raw'] as String?,
      json['engtl'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'al': instance.al,
      'ap': instance.ap,
      'bw': instance.bw,
      'kt': instance.kt,
      'mu': instance.mu,
      'nu': instance.nu,
      'amz': instance.amz,
      'cdj': instance.cdj,
      'ebj': instance.ebj,
      'mal': instance.mal,
      'raw': instance.raw,
      'engtl': instance.engtl,
    };

TagAttributes _$TagAttributesFromJson(Map<String, dynamic> json) =>
    TagAttributes(
      name: json['name'] == null
          ? null
          : TagName.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagAttributesToJson(TagAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

TagName _$TagNameFromJson(Map<String, dynamic> json) => TagName(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$TagNameToJson(TagName instance) => <String, dynamic>{
      'en': instance.en,
    };

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    Relationships(
      json['id'] as String?,
      json['type'] as String?,
      json['attributes'] == null
          ? null
          : CoverAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
    };

CoverAttributes _$CoverAttributesFromJson(Map<String, dynamic> json) =>
    CoverAttributes(
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$CoverAttributesToJson(CoverAttributes instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
    };
