import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cuenty_app/application/app/config/index.dart';
import 'package:cuenty_app/application/ui/screens/login_screen/index.dart';
import 'package:cuenty_app/core/utils/index.dart'
    show MySingletonSharedPreferencesImpl;

void main() {
  Future<void> pumpLoginFormWidget(WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: LoginFormWidget(),
      ),
    ));
  }

  group('LoginFormWidget Tests', () {
    testWidgets('Should render all UI components properly',
        (WidgetTester tester) async {
      await pumpLoginFormWidget(tester);

      // Verifica que los elementos estén presentes en el widget
      expect(find.byKey(const Key('input-name')), findsOneWidget);
      expect(find.byKey(const Key('password-name')), findsOneWidget);
      expect(find.byType(Checkbox), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('Should show error message when password is empty',
        (WidgetTester tester) async {
      await pumpLoginFormWidget(tester);

      var expectErrorPass = LoginErrors.userPsw.i18n;
      const userName = 'user_test';
      const inputNameKey = Key('input-name');
      final findedBtn = find.byType(ElevatedButton);

      // Llenar el campo de nombre de usuario pero no el de contraseña
      await tester.enterText(find.byKey(inputNameKey), userName);
      await tester.tap(findedBtn);
      await tester.pump();

      // Verifica que se muestre un mensaje de error para la contraseña
      expect(find.text(expectErrorPass), findsOneWidget);
    });

    testWidgets('Should navigate to home page on successful login',
        (WidgetTester tester) async {
      final mockSharedPrefs = MySingletonSharedPreferencesImpl();
      await tester.pumpWidget(MaterialApp(
        home: const Scaffold(
          body: LoginFormWidget(),
        ),
        onGenerateRoute: (settings) {
          if (settings.name == AppRoutes.homeRoute) {
            return MaterialPageRoute(
                builder: (_) => const Scaffold(body: Text('Home Screen')));
          }
          return null;
        },
      ));

      // Llenar campos y enviar el formulario
      await tester.enterText(find.byKey(const Key('input-name')), 'user_test');
      await tester.enterText(
          find.byKey(const Key('password-name')), 'password123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verifica que el usuario haya sido guardado en SharedPreferences
      expect(mockSharedPrefs.userName, 'user_test');

      expect(find.text(LoginErrors.userError), findsNothing);
      expect(find.text(LoginErrors.userErrorLen), findsNothing);
      expect(find.text(LoginErrors.userPsw), findsNothing);

      // Verifica que se navegue a la pantalla de inicio
      expect(find.text('Home Screen'), findsOneWidget);
    });

    testWidgets('Should toggle the checkbox state',
        (WidgetTester tester) async {
      await pumpLoginFormWidget(tester);

      // Verifica que el estado inicial del checkbox sea falso
      Checkbox checkbox = tester.widget(find.byType(Checkbox));
      expect(checkbox.value, false);

      // Haz tap en el checkbox para cambiar su estado
      await tester.tap(find.byType(Checkbox));
      await tester.pump();

      // Verifica que el estado del checkbox haya cambiado a verdadero
      checkbox = tester.widget(find.byType(Checkbox));
      expect(checkbox.value, true);
    });
  });
}
