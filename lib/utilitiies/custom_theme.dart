import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class CustomTheme {
  BuildContext context;

  CustomTheme.of(this.context);

  ThemeData get appTheme {
    final theme = context.read<ThemeProvider>();
    return theme.isDarkTheme ? theme.darkTheme() : theme.lightTheme();
  }
}
