import 'package:flutter/material.dart';
// Strings
import 'package:cuenty_app/application/ui/screens/home/i18n/home.i18n.dart';

class RecentTransactionsWidget extends StatelessWidget {
  const RecentTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(
          style: const ButtonStyle(alignment: Alignment.centerRight),
          child: Text(
            HomeStrings.viewAll.i18n,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(53, 97, 254, 1)),
          ),
          onPressed: () {
            print('le diste clic a view all');
          },
        ),
      ],
    );
  }
}
