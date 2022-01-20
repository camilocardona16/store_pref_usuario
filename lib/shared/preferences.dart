import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // late -> cuando se vaya a usar ya este inicializada
  static late SharedPreferences _pref;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static String get name {
    return _pref.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _pref.setString('name', name);
  }

  static bool get isDarkMode {
    return _pref.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool darkMode) {
    _isDarkMode = darkMode;
    _pref.setBool('isDarkMode', darkMode);
  }

  static int get gender {
    return _pref.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _pref.setInt('gender', gender);
  }
}
