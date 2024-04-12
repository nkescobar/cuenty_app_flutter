import 'package:cuenty_app/application/ui/screens/all_transaction_screen/all_transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/application/ui/screens/index.dart'
    show HomeScreen, LoginScreen, NewScreen, OtherScreen, SignInScreen;
import 'package:cuenty_app/domain/index.dart' show User;

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const LoginScreen()),
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(
              child: HomeScreen(
            userName: settings.arguments as String,
          )),
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
      case AppRoutes.signInScreenRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const SignInScreen()),
        );
      case AppRoutes.allTransactionScreenRoute:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const AllTransactionScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => I18n(child: const LoginScreen()),
        );
    }
  }
}
