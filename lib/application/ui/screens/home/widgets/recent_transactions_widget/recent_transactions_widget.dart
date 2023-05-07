import 'package:flutter/material.dart';

class RecentTransactionsWidget extends StatelessWidget {
  const RecentTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Este es el reto',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
