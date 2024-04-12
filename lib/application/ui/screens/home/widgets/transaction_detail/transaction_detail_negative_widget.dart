import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show CustomMoneyDisplayWidget;
import 'package:cuenty_app/application/app/design/index.dart' show AppColors;
import 'package:cuenty_app/domain/index.dart' show TransactionDetail;

class TransactionDetailNegativeWidget extends StatelessWidget {
  final TransactionDetail transactionDetail;
  const TransactionDetailNegativeWidget(
      {super.key, required this.transactionDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.brandErrorColor),
          child: const Icon(
            Icons.expand_more,
            color: AppColors.brandOnErrorColor,
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionDetail.movementName,
                style: const TextStyle(
                    color: AppColors.brandDarkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              Text(
                transactionDetail.transactionDate,
                style: const TextStyle(
                    fontSize: 10, color: AppColors.brandLigthDarkColor),
              ),
            ],
          ),
        ),
        Expanded(
            child: CustomMoneyDisplayWidget(
          margin: const EdgeInsets.only(top: 7),
          amount: transactionDetail.amount,
          amountStyle: const TextStyle(
              color: AppColors.brandOnErrorColor,
              fontWeight: FontWeight.bold,
              fontSize: 13),
          leftSimbol: const Text(
            '-\$ ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.brandOnErrorColor,
                fontSize: 13),
          ),
          amountStyleSmall: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.brandOnErrorColor,
              fontSize: 10),
        )),
      ],
    );
  }
}
