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
  static final _t = Translations('en_us') +
      {
        'en_us': LoginStrings.hello,
        'es_co': 'Inicio!',
      } +
      {
        'en_us': LoginStrings.userInputLabel,
        'es_co': 'Usuario',
      } +
      {
        'en_us': LoginStrings.userPswInputLabel,
        'es_co': 'Contraseña',
      } +
      {
        'en_us': LoginStrings.rememberMe,
        'es_co': 'Recuerdame',
      } +
      {
        'en_us': LoginStrings.recoveryPassword,
        'es_co': 'Recordar contraseña',
      } +
      {
        'en_us': LoginStrings.orContinue,
        'es_co': 'O continue con',
      } +
      {
        'en_us': LoginStrings.logIn,
        'es_co': 'Inicio sesión',
      } +
      {
        'en_us': LoginStrings.notAMember,
        'es_co': '¿No estas registrado?',
      } +
      {
        'en_us': LoginStrings.registerNow,
        'es_co': 'Registrate ahora',
      } +
      {
        'en_us': LoginErrors.userError,
        'es_co': 'Ingrese un usuario',
      } +
      {
        'en_us': LoginErrors.userErrorLen,
        'es_co': 'Ingrese un usuario válido',
      } +
      {
        'en_us': LoginErrors.userPsw,
        'es_co': 'Verifique su contraseña',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
