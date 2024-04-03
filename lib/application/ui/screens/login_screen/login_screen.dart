import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/screens/login_screen/index.dart'
    show LoginFormWidget;
import 'package:cuenty_app/application/ui/screens/login_screen/i18n/login.i18n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 100.0),
          child: Column(children: [
            Text(
              LoginStrings.hello.i18n,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
              child: Text(
                LoginStrings.description.i18n,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const LoginFormWidget()
          ]),
        ),
      ),
    );
  }
}
