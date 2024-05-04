// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'auth_init.g.dart';

@JsonSerializable()
class Auth {
  final String access_token;
  final String refresh_token;
  Auth({required this.access_token, required this.refresh_token});
  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
