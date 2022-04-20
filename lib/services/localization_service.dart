import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class LocalizationService {
  late String languageCode;
  Future<void> init() async {
    final String deviceLocaleCode = Platform.localeName.split('_')[0];
    languageCode = await loadLocale() ?? deviceLocaleCode;
  }

  final prefKey = 'locale';

  Future<void> savePreferredLocale(String code) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(prefKey, code);
  }

  Future<String?> loadLocale() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(prefKey);
  }
}
