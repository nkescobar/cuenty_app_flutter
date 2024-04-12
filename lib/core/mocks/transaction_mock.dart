import 'package:cuenty_app/core/index.dart' show TypeTransaction;
import 'package:cuenty_app/domain/index.dart'
    show TransactionDetail, TransactionDetailByDay, TransactionDetailByMonth;

class TransactionsMocks {
  TransactionsMocks._();

  static const List<String> categories = [
    'All',
    'Transportation',
    'Shop',
    'Food and drink',
    'Electronics',
    'Bakey'
  ];
  static List<TransactionDetailByMonth> transactionDetailByMonth = [
    TransactionDetailByMonth(month: 'April', listofTransactions: [
      TransactionDetailByDay(
          day: 'TUE',
          dayNumber: 4,
          isToday: true,
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
                amount: 433.35),
          ]),
      TransactionDetailByDay(
          day: 'MON',
          dayNumber: 3,
          isToday: false,
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
          ])
    ]),
    TransactionDetailByMonth(month: 'March', listofTransactions: [
      TransactionDetailByDay(
          day: 'MON',
          dayNumber: 4,
          isToday: false,
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
                amount: 433.35),
          ]),
      TransactionDetailByDay(
          day: 'SAT',
          dayNumber: 3,
          isToday: false,
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
          ])
    ]),
    TransactionDetailByMonth(month: 'February', listofTransactions: [
      TransactionDetailByDay(
          day: 'MON',
          dayNumber: 4,
          isToday: false,
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
                amount: 433.35),
          ]),
      TransactionDetailByDay(
          day: 'SAT',
          dayNumber: 3,
          isToday: false,
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
          ])
    ]),
    TransactionDetailByMonth(month: 'January', listofTransactions: [
      TransactionDetailByDay(
          day: 'MON',
          dayNumber: 4,
          isToday: false,
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
                amount: 433.35),
          ]),
      TransactionDetailByDay(
          day: 'SAT',
          dayNumber: 3,
          isToday: false,
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
          ])
    ]),
    TransactionDetailByMonth(month: 'December', listofTransactions: [
      TransactionDetailByDay(
          day: 'MON',
          dayNumber: 4,
          isToday: false,
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
                amount: 433.35),
          ]),
      TransactionDetailByDay(
          day: 'SAT',
          dayNumber: 3,
          isToday: false,
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
          ])
    ]),
  ];
}
