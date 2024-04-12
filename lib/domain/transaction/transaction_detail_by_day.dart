import 'package:cuenty_app/domain/transaction/index.dart'
    show TransactionDetail;

class TransactionDetailByDay {
  final String day;
  final int dayNumber;
  final bool isToday;
  final List<TransactionDetail> listofTransactions;
  TransactionDetailByDay(
      {required this.day,
      required this.dayNumber,
      required this.isToday,
      required this.listofTransactions});
}
