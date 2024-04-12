import 'package:flutter/material.dart';
import 'package:cuenty_app/application/app/config/index.dart' show AppRoutes;
import 'package:cuenty_app/core/enums/index.dart' show TypeTransaction;
import 'package:cuenty_app/domain/index.dart' show TransactionDetail;
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show TransactionDetailByDayWidget;
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
                fontSize: 13,
                color: Color.fromRGBO(53, 97, 254, 1)),
          ),
          onPressed: () {
            print('le diste clic a view all');
            Navigator.of(context)
                .pushNamed(AppRoutes.allTransactionScreenRoute);
          },
        ),
        TransactionDetailByDayWidget(
          day: 'TUE',
          isToday: true,
          dayNumber: 4,
          listofTransactions: [
            TransactionDetail(
                movementName: 'Movement Name',
                transactionDate: 'Monday 3th,  September 2023',
                typeTransaction: TypeTransaction.negative,
                amount: 420.16),
            TransactionDetail(
                movementName: 'Movement Name',
                transactionDate: 'Monday 3th,  September 2023',
                typeTransaction: TypeTransaction.positive,
                amount: 433.35)
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        TransactionDetailByDayWidget(
          day: 'MON',
          isToday: false,
          dayNumber: 3,
          listofTransactions: [
            TransactionDetail(
                movementName: 'Movement Name',
                transactionDate: 'Monday 3th,  September 2023',
                typeTransaction: TypeTransaction.positive,
                amount: 720.92),
            TransactionDetail(
                movementName: 'Movement Name',
                transactionDate: 'Monday 3th,  September 2023',
                typeTransaction: TypeTransaction.negative,
                amount: 84.45),
            TransactionDetail(
                movementName: 'Movement Name',
                transactionDate: 'Monday 3th,  September 2023',
                typeTransaction: TypeTransaction.positive,
                amount: 137.26)
          ],
        )
      ],
    );
  }
}
