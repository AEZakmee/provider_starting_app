import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/localization_provider.dart';
import '../providers/theme_provider.dart';
import '../utilitiies/custom_theme.dart';
import 'router.dart';

enum supportedLocales { en, bg }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocalizationProvider>();
    final themeProvider = context.watch<ThemeProvider>();
    return Container(
      color: CustomTheme.of(context).appTheme.micaBackgroundColor,
      child: FluentApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: localeProvider.getLocale(),
        theme: themeProvider.lightTheme(),
        darkTheme: themeProvider.darkTheme(),
        themeMode: themeProvider.themeMode,
        supportedLocales: supportedLocales.values.map((e) => Locale(e.name)),
        initialRoute: Routes.splash,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
