import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/ui/screens/index.dart'
    show HomeScreen, NewScreen, OtherScreen;
import 'package:cuenty_app/domain/index.dart' show User;

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const HomeScreen()),
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const HomeScreen()),
        );
      case AppRoutes.newScreenRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const NewScreen()),
        );
      case AppRoutes.otherScreenRoute:
        return MaterialPageRoute(
          builder: (_) =>
              I18n(child: OtherScreen(userData: settings.arguments as User)),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const HomeScreen()),
        );
    }
  }
}
