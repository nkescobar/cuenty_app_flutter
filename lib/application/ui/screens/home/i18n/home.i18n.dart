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
  static final _t = Translations.byLocale('en_us') +
      {
        'en_us': {
          'home': HomeStrings.home,
          'welcome': HomeStrings.welcome,
          'budget': HomeStrings.budget,
          'categories': HomeStrings.categories,
          'recentTransaction': HomeStrings.recentTransaction,
          'viewAll': HomeStrings.viewAll,
        },
        'es_co': {
          'home': 'Inicio!',
          'welcome': 'Bienvenido',
          'budget': 'Tu presupuesto',
          'categories': 'Categorías',
          'recentTransaction': 'Transacciones recientes',
          'viewAll': 'Ver todo',
        },
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
