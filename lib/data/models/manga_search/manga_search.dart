// manga.dart
import 'package:json_annotation/json_annotation.dart';
part 'manga_search.g.dart';

@JsonSerializable(explicitToJson: true)
class Manga {
  final String result;
  final String response;
  final List<Data> data;

  Manga(this.result, this.response, this.data);

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  Map<String, dynamic> toJson() => _$MangaToJson(this);
}

@JsonSerializable()
class Data {
  final String id;
  final String type;
  final Attributes attributes;
  final List<Relationships> relationships;

  Data(this.id, this.type, this.attributes, this.relationships);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Attributes {
  final Title? title;
  final List<AltTitles?> altTitles;
  final Description? description;
  final bool? isLocked;
  final Links? links;
  final String? originalLanguage;
  final String? publicationDemographic;
  final String? status;
  final int? year;
  final String? contentRating;
  final List<Tags>? tags;
  final String? createdAt;
  final String? updatedAt;
  final String? latestUploadedChapter;

  Attributes(
      this.altTitles,
      this.title,
      this.description,
      this.isLocked,
      this.links,
      this.originalLanguage,
      this.publicationDemographic,
      this.status,
      this.year,
      this.contentRating,
      this.tags,
      this.createdAt,
      this.updatedAt,
      this.latestUploadedChapter);

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class AltTitles {
  final String? en;
  AltTitles(this.en);
  factory AltTitles.fromJson(Map<String, dynamic> json) =>
      _$AltTitlesFromJson(json);
  Map<String, dynamic> toJson() => _$AltTitlesToJson(this);
}

@JsonSerializable()
class Tags {
  final String? id;
  final String? type;
  final TagAttributes? attributes;
  final List<Relationships>? relationships;

  Tags(this.id, this.type, this.attributes, this.relationships);

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
  Map<String, dynamic> toJson() => _$TagsToJson(this);
}

@JsonSerializable()
class Description {
  final String? en;
  Description({required this.en});
  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
class Title {
  final String? en;
  Title({required this.en});
  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class Links {
  final String? al;
  final String? ap;
  final String? bw;
  final String? kt;
  final String? mu;
  final String? nu;
  final String? amz;
  final String? cdj;
  final String? ebj;
  final String? mal;
  final String? raw;
  final String? engtl;

  Links(this.al, this.ap, this.bw, this.kt, this.mu, this.nu, this.amz,
      this.cdj, this.ebj, this.mal, this.raw, this.engtl);

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class TagAttributes {
  final TagName? name;
  TagAttributes({required this.name});
  factory TagAttributes.fromJson(Map<String, dynamic> json) =>
      _$TagAttributesFromJson(json);
  Map<String, dynamic> toJson() => _$TagAttributesToJson(this);
}

@JsonSerializable()
class TagName {
  final String? en;
  TagName({required this.en});
  factory TagName.fromJson(Map<String, dynamic> json) =>
      _$TagNameFromJson(json);
  Map<String, dynamic> toJson() => _$TagNameToJson(this);
}

@JsonSerializable()
class Relationships {
  final String? id;
  final String? type;
  final CoverAttributes? attributes;

  Relationships(this.id, this.type, this.attributes);

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);
  Map<String, dynamic> toJson() => _$RelationshipsToJson(this);
}

@JsonSerializable()
class CoverAttributes {
  final String? fileName;
  CoverAttributes({required this.fileName});
  factory CoverAttributes.fromJson(Map<String, dynamic> json) =>
      _$CoverAttributesFromJson(json);
  Map<String, dynamic> toJson() => _$CoverAttributesToJson(this);
}
// This part will be generated by build_runner
