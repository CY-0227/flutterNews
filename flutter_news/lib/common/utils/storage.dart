import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  /// 单例模式
  static final StorageUtil _instance = StorageUtil._();
  factory StorageUtil() {
    return _instance;
  }
  StorageUtil._();

  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  dynamic getJson(String key) {
    String? jsonString = _sharedPreferences.getString(key);
    return jsonString == null ? null : jsonDecode(jsonString);
  }

  Future<bool> setJson(String key, dynamic value) {
    String jsonString = jsonEncode(value);
    return _sharedPreferences.setString(key, jsonString);
  }

  bool getBool(String key) {
    bool? value = _sharedPreferences.getBool(key);
    return value ?? false;
  }

  Future<bool> setBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  Future<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }
}
