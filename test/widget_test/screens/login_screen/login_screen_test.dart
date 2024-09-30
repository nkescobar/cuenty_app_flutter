import 'package:cuenty_app/application/app/config/app_routes.dart';
import 'package:cuenty_app/application/ui/screens/login_screen/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Encontrar todos los widgets en patalla', () {
    testWidgets('Debería mostrar el texto de bienvenida, formulario y botones',
        (WidgetTester tester) async {
      // Construir el widget
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Verificar que el texto de bienvenida está presente
      expect(find.text('Hello'), findsOneWidget);

      // Verificar que el LoginFormWidget esté presente
      expect(find.byType(LoginFormWidget), findsOneWidget);

      // Verificar que los botones de Google y Facebook estén presentes
      expect(find.text('Google'), findsOneWidget);
      expect(find.text('Facebook'), findsOneWidget);

      // Verificar que el botón de "Not a member" y "Register Now" esté presente
      expect(find.text('Not a member?'), findsOneWidget);
      expect(find.text('Register Now'), findsOneWidget);
    });
  });

  group('Ser capaz de interactuar con los widgets en pantalla', () {
    testWidgets(
        'Debería cambiar el tamaño del texto de bienvenida con animación',
        (WidgetTester tester) async {
      // Construir el widget
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Verificar el tamaño inicial del texto (13)
      var textFinder = find.text('Hello');
      var textWidget = tester.widget<Text>(textFinder);
      expect(textWidget.style?.fontSize, 13);

      // Avanzar el tiempo para completar la animación
      await tester.pump(const Duration(milliseconds: 2000));

      // Verificar que el tamaño del texto haya cambiado a 55
      textWidget = tester.widget<Text>(textFinder);
      expect(textWidget.style?.fontSize, 55);
    });
  });

  group('Probar los escenarios de interacción del usuario con nuestros widgets',
      () {
    testWidgets(
        'Debería navegar a la pantalla de registro al pulsar Register Now',
        (WidgetTester tester) async {
      // Configurar la navegación para la prueba
      await tester.pumpWidget(
        MaterialApp(
          routes: {
            AppRoutes.signInScreenRoute: (context) =>
                const Scaffold(body: Text('Register Screen')),
          },
          home: const LoginScreen(),
        ),
      );

      // Avanzar el tiempo para permitir que las animaciones se completen
      await tester.pump(const Duration(seconds: 3));

      // Verificar que estamos en la pantalla de Login
      expect(find.text('Not a member?'), findsOneWidget);
    });
  });
}
