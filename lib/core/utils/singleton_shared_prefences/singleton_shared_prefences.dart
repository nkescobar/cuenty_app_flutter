abstract class MySingletonSharedPreferences {
  String? get token => token;

  set token(String? token);

  String? get paginaActual => paginaActual;

  set paginaActual(String? paginaActual);

  String? get userName => userName;

  set userName(String? userName);
}

class MySingletonSharedPreferencesImpl implements MySingletonSharedPreferences {
  static final MySingletonSharedPreferencesImpl _singleton =
      MySingletonSharedPreferencesImpl._internal();

  factory MySingletonSharedPreferencesImpl() {
    return _singleton;
  }

  MySingletonSharedPreferencesImpl._internal();
  @override
  String? paginaActual;

  @override
  String? token;

  @override
  String? userName;
}
