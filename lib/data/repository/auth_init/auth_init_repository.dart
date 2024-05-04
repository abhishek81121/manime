import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manime/data/models/auth_init/auth_init.dart';

class AuthInit {
  AuthInit();
  Future<Auth> authinit() async {
    final dio = Dio();
    Response response = await dio.post(
        'https://auth.mangadex.org/realms/mangadex/protocol/openid-connect/token',
        data: {
          'grant_type': 'password',
          'username': dotenv.env['MANGADEX_USERNAME'],
          'password': dotenv.env['MANGADEX_PASSWORD'],
          'client_id': dotenv.env['MANGADEX_API_CLIENT_ID'],
          'client_secret': dotenv.env['MANGADEX_API_SECRET']
        });
    if (response.statusCode == 200) {
      return Auth.fromJson(response.data);
    } else {
      return Auth(access_token: "", refresh_token: "");
    }
  }
}
