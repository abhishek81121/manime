import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:manime/data/models/auth_init/auth_init.dart';

class AuthInit {
  AuthInit();
  Future<Auth> authinit() async {
    final dio = Dio();
    const storage = FlutterSecureStorage();

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
      Auth auth = Auth.fromJson(response.data);
      await storage.write(key: 'access_token', value: auth.access_token);
      await storage.write(key: 'refresh_token', value: auth.refresh_token);
      return auth;
    } else {
      return Auth(access_token: "", refresh_token: "");
    }
  }
}
