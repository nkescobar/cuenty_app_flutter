import 'package:flutter/material.dart';
// Shared Widgets
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show CustomMoneyDisplayWidget, SumaryCardWidget, TypeSummaryCardEnum;
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;
// Strings
//Strings
import 'package:cuenty_app/application/ui/screens/home/i18n/home.i18n.dart';

class TopHomeBodyWidget extends StatelessWidget {
  const TopHomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingL),
      transform: Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
        color: AppColors.brandPrimaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: AppRadius.small, bottomRight: AppRadius.small),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: AppSizes.marginL),
            child: Text(
              HomeStrings.budget.i18n,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          CustomMoneyDisplayWidget(
            amount: 2868000.12,
            padding: const EdgeInsets.only(
                top: AppSizes.paddingM, right: AppSizes.paddingS),
            amountStyle: Theme.of(context).textTheme.displayLarge!,
            amountStyleSmall: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.brandLightColor),
          ),
          SumaryCardWidget(
            typeSummaryCard: TypeSummaryCardEnum.incomes,
            amount: 700000,
            period: 'From January 1 to January 31',
            action: () => print('incomes'),
          ),
          SumaryCardWidget(
            typeSummaryCard: TypeSummaryCardEnum.spending,
            amount: 90000,
            period: 'From January 1 to January 31',
            action: () => print('spending'),
          ),
        ],
      ),
    );
  }
}
