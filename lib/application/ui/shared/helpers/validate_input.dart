import 'package:cuenty_app/application/ui/screens/login_screen/index.dart'
    show Localization, LoginErrors;

String? validateInput(value) {
  if (value == null || value.isEmpty) {
    return LoginErrors.userError.i18n;
  }

  if (value.length >= 10) {
    return LoginErrors.userErrorLen.i18n;
  }
  return null;
}
