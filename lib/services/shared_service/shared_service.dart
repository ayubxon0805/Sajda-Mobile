import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  late final SharedPreferences pref;

  setStringData(String key, String value) {
    return pref.setString(key, value);
  }

  setIntData(String key, String value) {
    return pref.setString(key, value);
  }
   setBoolData(String key, bool value) {
    return pref.setBool(key, value);
  }

  getStringData(String key, String defValue) {
    return pref.getString(key) ?? defValue;
  }

  getBoolData(String key, bool defValue) {
    return pref.getBool(key) ?? defValue;
  }

  getIntData(String key, int defValue) {
    return pref.getString(key) ?? defValue;
  }

  removeData(
    String key,
  ) {
    return pref.remove(key);
  }

  Future<SharedPreferences> open() async {
    pref = await SharedPreferences.getInstance();
    return pref;
  }
}
