import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show TransactionDetailNegativeWidget, TransactionDetailPositiveWidget;
import 'package:cuenty_app/core/index.dart' show TypeTransaction;
import 'package:cuenty_app/application/app/design/index.dart' show AppColors;
import 'package:cuenty_app/domain/index.dart' show TransactionDetail;

class TransactionDetailByDayWidget extends StatelessWidget {
  final String day;
  final int dayNumber;
  final bool isToday;
  final List<TransactionDetail> listofTransactions;
  const TransactionDetailByDayWidget(
      {super.key,
      required this.listofTransactions,
      required this.day,
      required this.isToday,
      required this.dayNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                day,
              ),
              Text(dayNumber.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          isToday ? FontWeight.bold : FontWeight.normal)),
              isToday
                  ? const Icon(
                      Icons.lens,
                      size: 8,
                      color: AppColors.brandOnSuccessColor,
                    )
                  : const SizedBox(
                      height: 8,
                      width: 8,
                    )
            ],
          ),
        ),
        Container(
          width: 340,
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: AppColors.brandLightColor,
              borderRadius: BorderRadius.circular(12)),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, indice) {
                print('vamos en la transaccion $indice');
                return listofTransactions[indice].typeTransaction ==
                        TypeTransaction.positive
                    ? TransactionDetailPositiveWidget(
                        transactionDetail: listofTransactions[indice])
                    : TransactionDetailNegativeWidget(
                        transactionDetail: listofTransactions[indice]);
              },
              separatorBuilder: (context, indice) => const Divider(
                    color: AppColors.brandSecondaryColor,
                    thickness: 2,
                  ),
              itemCount: listofTransactions.length),
        )
      ],
    );
  }
}
