import 'package:i18n_extension/i18n_extension.dart';

class SignInStrings {
  static const String signIn = 'Sign In';
  static const String userInputLabel = 'User Name';
  static const String userPswInputLabel = 'Password';
  static const String nameInputLabel = 'Name';

  static const String agree = 'I agree with';
  static const String terms = 'Terms';
  static const String privacy = 'Privacy';
  static const String and = 'and';

  static const String getStarted = 'Get Started';
  static const String orContinue = 'Or';
  static const String google = 'Google';
  static const String facebook = 'Facebook';
  static const String logIn = 'Log In';
  static const String alreadyAccount = 'Already have an account?';
  static const String registerNow = 'Register Now';
  static const String description =
      'Lorem ipsum dolor sit amet, consectetuer adipiscing.';
}

class SignInErrors {
  SignInErrors._();
  static const String userError = 'Enter a user';
  static const String nameError = 'Enter a name';
  static const String userErrorLen = 'Enter a valid username';
  static const String userPsw = 'Verify your password';
}

extension Localization on String {
  static final _t = Translations.byLocale('en_us') +
      {
        'en_us': SignInStrings.signIn,
        'es_co': 'Registrarse!',
      } +
      {
        'en_us': SignInStrings.userInputLabel,
        'es_co': 'Usuario',
      } +
      {
        'en_us': SignInStrings.userPswInputLabel,
        'es_co': 'Contraseña',
      } +
      {
        'en_us': SignInStrings.nameInputLabel,
        'es_co': 'Nombre',
      } +
      {
        'en_us': SignInStrings.agree,
        'es_co': 'Acepto',
      } +
      {
        'en_us': SignInStrings.terms,
        'es_co': 'Terminos',
      } +
      {
        'en_us': SignInStrings.privacy,
        'es_co': 'Privacidad',
      } +
      {
        'en_us': SignInStrings.and,
        'es_co': 'y',
      } +
      {
        'en_us': SignInStrings.logIn,
        'es_co': 'Iniciar',
      } +
      {
        'en_us': SignInStrings.getStarted,
        'es_co': 'Registrate ahora',
      } +
      {
        'en_us': SignInStrings.alreadyAccount,
        'es_co': '¿Ya tienes una cuenta?',
      } +
      {
        'en_us': SignInErrors.userError,
        'es_co': 'Ingrese un usuario',
      } +
      {
        'en_us': SignInErrors.nameError,
        'es_co': 'Ingrese un nombre',
      } +
      {
        'en_us': SignInErrors.userErrorLen,
        'es_co': 'Ingrese un usuario válido',
      } +
      {
        'en_us': SignInErrors.userPsw,
        'es_co': 'Verifique su contraseña',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
