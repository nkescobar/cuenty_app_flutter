import 'package:cuenty_app/domain/transaction/index.dart'
    show TransactionDetailByDay;

class TransactionDetailByMonth {
  final String month;
  final List<TransactionDetailByDay> listofTransactions;
  TransactionDetailByMonth({
    required this.month,
    required this.listofTransactions,
  });
}
