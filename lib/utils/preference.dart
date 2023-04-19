import 'dart:async' show Future;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }

  static setBool(String key, bool value) async {
    await _prefsInstance!.setBool(key, value);
  }

  static setDouble(String key, double value) async {
    await _prefsInstance!.setDouble(key, value);
  }

  static setInt(String key, int value) async {
    await _prefsInstance!.setInt(key, value);
  }

  static setString(String key, String value) async {
    return _prefsInstance!.setString(key, value);
  }

  static setStringList(String key, List<String> value) async {
    await _prefsInstance!.setStringList(key, value);
  }

  static setData(String key, dynamic value) async {
    if (value != null && _prefsInstance != null) {
      _prefsInstance!.setString(key, jsonEncode(value));
    }
  }

  static String getString(String key) {
    return _prefsInstance!.getString(key) ?? "";
  }

  static bool getBool(String key) {
    return _prefsInstance?.getBool(key) ?? false;
  }

  static double getDouble(String key) {
    return _prefsInstance?.getDouble(key) ?? 0.0;
  }

  static int getInt(String key) {
    return _prefsInstance?.getInt(key) ?? 0;
  }

  static List<String>? getStringList(String key) {
    return _prefsInstance!.getStringList(key);
  }

  static getData(String key) {
    if (_prefsInstance != null && _prefsInstance!.getString(key) != null) {
      return jsonDecode(_prefsInstance!.getString(key)!) ?? {};
    } else {
      return {};
    }
  }

  static Future<bool> remove(String key) async => await _prefsInstance!.remove(key);

  static Future<bool> clear() async => await _prefsInstance!.clear();

}
