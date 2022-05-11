import 'package:get_it/get_it.dart';

import '../services/localization_service.dart';
import '../services/theme_service.dart';

final locator = GetIt.instance;

void setup() {
  locator
    ..registerLazySingleton(LocalizationService.new)
    ..registerLazySingleton(ThemeService.new);
}
