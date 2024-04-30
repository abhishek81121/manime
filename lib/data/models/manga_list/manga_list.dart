import 'package:json_annotation/json_annotation.dart';
part 'manga_list.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiResponse {
  String result;
  String response;
  Data data;

  ApiResponse(
      {required this.result, required this.response, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

@JsonSerializable()
class Data {
  String id;
  String type;
  Attributes attributes;
  List<Relationship> relationships;

  Data(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.relationships});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Attributes {
  String name;
  String visibility;
  int version;

  Attributes(
      {required this.name, required this.visibility, required this.version});

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class Relationship {
  String id;
  String type;

  Relationship({required this.id, required this.type});

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);

  Map<String, dynamic> toJson() => _$RelationshipToJson(this);
}
