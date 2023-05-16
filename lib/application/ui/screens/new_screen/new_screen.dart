import 'package:flutter/material.dart';
import 'package:cuenty_app/domain/index.dart' show User;
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Weincoders', age: 24);
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
          child: TextButton(
        child: const Text('hola todo anda bien'),
        onPressed: () => Navigator.of(context).pushReplacementNamed(
            AppRoutes.otherScreenRoute,
            arguments: userData),
      )),
    );
  }
}
