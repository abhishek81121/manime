// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mangaSearch.dart';

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
      Title.fromJson(json['title'] as Map<String, dynamic>),
      (json['altTitles'] as List<dynamic>).map((e) => e as String).toList(),
      json['description'] as String,
      json['isLocked'] as bool,
      Links.fromJson(json['links'] as Map<String, dynamic>),
      json['originalLanguage'] as String,
      json['lastVolume'] as String,
      json['lastChapter'] as String,
      json['publicationDemographic'] as String,
      json['status'] as String,
      json['year'] as int,
      json['contentRating'] as String,
      (json['tags'] as List<dynamic>)
          .map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['state'] as String,
      json['chapterNumbersResetOnNewVolume'] as bool,
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['version'] as int,
      (json['availableTranslatedLanguages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['latestUploadedChapter'] as String,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'altTitles': instance.altTitles,
      'description': instance.description,
      'isLocked': instance.isLocked,
      'links': instance.links,
      'originalLanguage': instance.originalLanguage,
      'lastVolume': instance.lastVolume,
      'lastChapter': instance.lastChapter,
      'publicationDemographic': instance.publicationDemographic,
      'status': instance.status,
      'year': instance.year,
      'contentRating': instance.contentRating,
      'tags': instance.tags,
      'state': instance.state,
      'chapterNumbersResetOnNewVolume': instance.chapterNumbersResetOnNewVolume,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'version': instance.version,
      'availableTranslatedLanguages': instance.availableTranslatedLanguages,
      'latestUploadedChapter': instance.latestUploadedChapter,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      json['en'] as String,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'en': instance.en,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      json['al'] as String,
      json['ap'] as String,
      json['bw'] as String,
      json['kt'] as String,
      json['mu'] as String,
      json['nu'] as String,
      json['amz'] as String,
      json['cdj'] as String,
      json['ebj'] as String,
      json['mal'] as String,
      json['raw'] as String,
      json['engtl'] as String,
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

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      json['id'] as String,
      json['type'] as String,
      Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      (json['relationships'] as List<dynamic>)
          .map((e) => Relationships.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    Relationships(
      json['id'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
