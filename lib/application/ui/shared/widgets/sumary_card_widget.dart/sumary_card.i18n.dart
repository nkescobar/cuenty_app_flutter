import 'package:i18n_extension/i18n_extension.dart';

class SummaryStrings {
  static const String incomes = 'Incomes';
  static const String spending = 'Spending';
}

extension Localization on String {
  static final _t = Translations.byLocale('en_us') +
      {
        'en_us': {
          'incomes': SummaryStrings.incomes,
          'spending': SummaryStrings.spending,
        },
        'es_co': {
          'incomes': 'Ingresos',
          'spending': 'Gastos',
        },
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
