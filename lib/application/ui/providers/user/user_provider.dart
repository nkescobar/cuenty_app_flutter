import 'package:flutter/material.dart';
import 'package:cuenty_app/domain/index.dart' show User;

class UserProvider extends InheritedWidget {
  final User userData;

  const UserProvider({
    super.key,
    required Widget child,
    required this.userData,
  }) : super(child: child);

  // OBtener la informacion solo utilizando el contexto
  static UserProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>();
  }

  @override
  bool updateShouldNotify(UserProvider oldWidget) {
    return true;
  }
}
