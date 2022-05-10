import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:system_theme/system_theme.dart';

import '../providers/localization_provider.dart';
import 'router.dart';

enum supportedLocales { en, bg }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocalizationProvider>();
    return Container(
      color: SystemTheme.isDarkMode ? Colors.black : Colors.white,
      child: FluentApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: localeProvider.getLocale(),
        theme: _theme,
        supportedLocales: supportedLocales.values.map((e) => Locale(e.name)),
        initialRoute: Routes.splash,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

ThemeData get _theme => ThemeData(
      brightness: SystemTheme.isDarkMode ? Brightness.dark : Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
