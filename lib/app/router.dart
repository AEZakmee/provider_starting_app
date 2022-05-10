import 'package:fluent_ui/fluent_ui.dart';
import '../screens/primary/main_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String primary = '/primary';
}

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return FluentPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.primary:
        return FluentPageRoute(
          builder: (_) => const PrimaryScreen(),
        );
      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
