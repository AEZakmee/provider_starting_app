import 'package:fluent_ui/fluent_ui.dart';
import 'package:system_theme/system_theme.dart';

class ColorGetter {
  static final ColorGetter _singleton = ColorGetter._internal();

  factory ColorGetter() => _singleton;

  ColorGetter._internal();

  Color get primaryColor =>
      SystemTheme.isDarkMode ? Colors.orange : Colors.yellow;
}
