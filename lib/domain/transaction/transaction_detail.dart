import 'package:cuenty_app/core/index.dart' show TypeTransaction;

class TransactionDetail {
  final String movementName;
  final String transactionDate;
  final TypeTransaction typeTransaction;
  final double amount;
  TransactionDetail(
      {required this.movementName,
      required this.transactionDate,
      required this.typeTransaction,
      required this.amount});
}
