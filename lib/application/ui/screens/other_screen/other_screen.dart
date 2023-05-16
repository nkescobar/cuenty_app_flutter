import 'package:flutter/material.dart';
import 'package:cuenty_app/domain/entities/index.dart' show User;

class OtherScreen extends StatefulWidget {
  final User userData;
  const OtherScreen({super.key, required this.userData});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text(
              'hola ${widget.userData.name} ustedes en promedio tienen ${widget.userData.age} '),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
