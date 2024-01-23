import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  CacheHelper._();

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (!sharedPreferences.containsKey('token')) {
      saveString(key: 'token', value: '');
    }
  }

  static Future<bool> saveString({
    required String key,
    required String value,
  }) async {
    return await sharedPreferences.setString(key, value);
  }

  static String? getString({
    required String key,
  }) {
    return sharedPreferences.getString(key);
  }
}
