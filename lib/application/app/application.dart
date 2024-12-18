import 'package:flutter/material.dart';
import 'package:cuenty_app/domain/index.dart' show User;
import 'package:cuenty_app/application/ui/providers/index.dart'
    show UserProvider;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:cuenty_app/application/app/router/router.dart';
import 'package:cuenty_app/application/app/design/index.dart' show AppThemes;
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;

class CuentyApp extends StatefulWidget {
  const CuentyApp({super.key});

  @override
  State<CuentyApp> createState() => _CuentyAppState();
}

class _CuentyAppState extends State<CuentyApp> {
  @override
  Widget build(BuildContext context) {
    return UserProvider(
      userData: User(name: ''),
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'), // English
          Locale('es', 'CO'), // Spanish
        ],
        debugShowCheckedModeBanner: false,
        theme: AppThemes.defaultTheme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRoutes.responsiveRoute,
      ),
    );
  }
}
