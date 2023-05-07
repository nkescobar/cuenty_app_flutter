import 'package:i18n_extension/i18n_extension.dart';

class SumaryStrings {
  static const String incomes = 'Incomes';
  static const String spending = 'Spending';
}

extension Localization on String {
  static final _t = Translations('en_us') +
      {
        'en_us': SumaryStrings.incomes,
        'es_co': 'Ingresos',
      } +
      {
        'en_us': SumaryStrings.spending,
        'es_co': 'Gastos',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
