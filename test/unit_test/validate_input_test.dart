import 'package:flutter_test/flutter_test.dart';
import 'package:cuenty_app/application/ui/screens/index.dart';
import 'package:cuenty_app/application/ui/shared/helpers/index.dart'
    show validateInput;

void main() {
  group('Testing Validate input ', () {
    test('invalid user with too long input', () {
      // AAA Pattern: Arrange, Act, Assert

      // Arrange: Preparar los datos para la prueba
      const inputValue = 'CuentyLovers'; // Cadena de más de 10 caracteres
      final expectedError = LoginErrors.userErrorLen.i18n;

      // Act: Ejecutar la función a probar
      final result = validateInput(inputValue);

      // Assert: Verificar que el resultado es el esperado
      expect(result, expectedError);
    });

    test('input is empty', () {
      // Arrange
      const inputValue = ''; // Cadena vacía
      final expectedError = LoginErrors.userError.i18n;

      // Act
      final result = validateInput(inputValue);

      // Assert
      expect(result, expectedError);
    });

    test('valid input', () {
      // Arrange
      const inputValue = 'User123'; // Cadena válida, menos de 10 caracteres

      // Act
      final result = validateInput(inputValue);

      // Assert
      expect(result, isNull); // Debe devolver null ya que es válido
    });

    test('input is null', () {
      // Arrange
      const inputValue = null; // Valor nulo
      final expectedError = LoginErrors.userError.i18n;

      // Act
      final result = validateInput(inputValue);

      // Assert
      expect(result, expectedError);
    });
  });
}
