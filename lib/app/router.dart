import 'package:flutter/material.dart';
import '../screens/authentication/main_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String main = '/main';
}

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (_) => const AuthenticationScreen(),
        );
      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
