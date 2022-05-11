import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/locator.dart';
import 'app/providers.dart';
import 'services/localization_service.dart';
import 'services/theme_service.dart';

Future<void> initApp() async {
  setup();
  await locator<LocalizationService>().init();
  await locator<ThemeService>().init();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const ProviderInitializer(child: MyApp()));
}
