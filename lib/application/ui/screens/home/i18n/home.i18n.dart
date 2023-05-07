import 'package:i18n_extension/i18n_extension.dart';

class HomeStrings {
  static const String home = 'Home!';
  static const String welcome = 'Welcome';
  static const String budget = 'Your Budget';
  static const String categories = 'Categories';
  static const String recentTransaction = 'Recent transaction';
  static const String viewAll = 'View all';
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
      } +
      {
        'en_us': HomeStrings.budget,
        'es_co': 'Tu presupuesto',
      } +
      {
        'en_us': HomeStrings.categories,
        'es_co': 'Categorias',
      } +
      {
        'en_us': HomeStrings.recentTransaction,
        'es_co': 'Transacciones recientes',
      } +
      {
        'en_us': HomeStrings.viewAll,
        'es_co': 'Ver todo',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
