import 'package:flutter/material.dart';

import '../app/locator.dart';
import '../services/localization_service.dart';

enum supportedLocales {
  en,
  bg,
}

class LocalizationProvider extends ChangeNotifier {
  final localizationService = locator<LocalizationService>();

  Future<void> setLanguage(String data) async {
    localizationService.languageCode = data;
    await localizationService.savePreferredLocale(data);
    notifyListeners();
  }

  Locale getLocale() => Locale(localizationService.languageCode);

  List<Locale> getSupportedLocales() => List.generate(
        supportedLocales.values.length,
        (index) => Locale(supportedLocales.values[index].name),
      );
}
