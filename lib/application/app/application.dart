import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';

import 'package:cuenty_app/application/app/design/index.dart' show AppThemes;
import 'package:cuenty_app/application/ui/screens/index.dart' show HomeScreen;

class CuentyApp extends StatefulWidget {
  const CuentyApp({super.key});

  @override
  State<CuentyApp> createState() => _CuentyAppState();
}

class _CuentyAppState extends State<CuentyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: I18n(
        initialLocale: const Locale('es', 'CO'),
        child: const HomeScreen(
          key: Key('home page'),
        ),
      ),
    );
  }
}
