import 'package:i18n_extension/i18n_extension.dart';

class LoginStrings {
  static const String hello = 'Hello';
  static const String userInputLabel = 'User Name';
  static const String userPswInputLabel = 'Password';
  static const String rememberMe = 'Remember me';
  static const String recoveryPassword = 'Recovery Password';
  static const String orContinue = 'Or Coninue with';
  static const String google = 'Google';
  static const String facebook = 'Facebook';
  static const String logIn = 'Log In';
  static const String notAMember = 'Not a member?';
  static const String registerNow = 'Register Now';
  static const String description =
      'Lorem ipsum dolor sit amet, consectetuer adipiscing.';
}

class LoginErrors {
  LoginErrors._();
  static const String userError = 'Enter a user';
  static const String userErrorLen = 'Enter a valid username';
  static const String userPsw = 'Verify your password';
}

extension Localization on String {
  static final _t = Translations.byLocale('en_us') +
      {
        'en_us': {
          'hello': LoginStrings.hello,
          'userInputLabel': LoginStrings.userInputLabel,
          'userPswInputLabel': LoginStrings.userPswInputLabel,
          'rememberMe': LoginStrings.rememberMe,
          'recoveryPassword': LoginStrings.recoveryPassword,
          'orContinue': LoginStrings.orContinue,
          'logIn': LoginStrings.logIn,
          'notAMember': LoginStrings.notAMember,
          'registerNow': LoginStrings.registerNow,
          'userError': LoginErrors.userError,
          'userErrorLen': LoginErrors.userErrorLen,
          'userPsw': LoginErrors.userPsw,
        },
        'es_co': {
          'hello': 'Inicio!',
          'userInputLabel': 'Usuario',
          'userPswInputLabel': 'Contraseña',
          'rememberMe': 'Recuérdame',
          'recoveryPassword': 'Recordar contraseña',
          'orContinue': 'O continúa con',
          'logIn': 'Iniciar sesión',
          'notAMember': '¿No estás registrado?',
          'registerNow': 'Regístrate ahora',
          'userError': 'Ingrese un usuario',
          'userErrorLen': 'Ingrese un usuario válido',
          'userPsw': 'Verifique su contraseña',
        },
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
