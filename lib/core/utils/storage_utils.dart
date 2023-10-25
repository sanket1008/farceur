import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  static StorageUtil? _storageUtil;
  static SharedPreferences? _preferences;

  static Future<StorageUtil?> getInstance() async {
    if (_storageUtil == null) {
      var secureStorage = StorageUtil._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  StorageUtil._();

  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // get string
  static String getString(String key, {String defValue = ''}) {
    if (_preferences == null) return defValue;
    return _preferences?.getString(key) ?? defValue;
  }

  static bool getBool(String key, {bool defValue = false}) {
    if (_preferences == null) return defValue;
    return _preferences?.getBool(key) ?? defValue;
  }

  static int getInt(String key, {int defValue = -1}) {
    if (_preferences == null) return defValue;
    return _preferences?.getInt(key) ?? defValue;
  }

  static List<String> getStringList(String key, {List<String> defValue = const []}) {
    if (_preferences == null) return defValue;
    return _preferences?.getStringList(key) ?? defValue;
  }
  static Future<bool> putStringList(
      String key,
      List<String>? value,
      ) {
    return _preferences!.setStringList(key, value ?? []);
  }

  // put string
  static Future<bool> putString(
    String key,
    String? value,
  ) {
    return _preferences!.setString(key, value ?? "");
  }

  static Future<bool> putInt(String key, int? value) {
    return _preferences!.setInt(key, value!);
  }

  static Future<bool>? putBoolean(String key, bool? value) {
    return _preferences?.setBool(key, value ?? false);
  }

  // clear all the data
  static void clearPreferences() {
    SharedPreferences prefs = _preferences!;
    prefs.clear();
  }
}
