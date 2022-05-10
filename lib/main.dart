import 'package:flutter/material.dart';
import 'package:system_theme/system_theme.dart';

import 'app/app.dart';
import 'app/locator.dart';
import 'app/providers.dart';
import 'services/localization_service.dart';

Future<void> initApp() async {
  setup();
  await locator<LocalizationService>().init();
  await SystemTheme.accentColor.load();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const ProviderInitializer(child: MyApp()));
}
