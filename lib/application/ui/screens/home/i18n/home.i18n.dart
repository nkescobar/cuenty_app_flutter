import 'package:i18n_extension/i18n_extension.dart';

class HomeStrings {
  static const String home = 'Home!';
  static const String welcome = 'Welcome';
}

extension Localization on String {
  static final _t = Translations('en_us') +
      {
        'en_us': HomeStrings.home,
        'es_co': 'Inicio!',
      } +
      {
        'en_us': HomeStrings.welcome,
        'es_co': 'Bienvenido',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
