import 'package:cuenty_app/application/ui/shared/widgets/custom_money_display_widget.dart/index.dart';
import 'package:flutter/material.dart';
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;
// Enum
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show Localization, SumaryStrings, TypeSummaryCardEnum;

class SumaryCardWidget extends StatelessWidget {
  final TypeSummaryCardEnum typeSummaryCard;
  final double amount;
  final String period;
  final void Function()? action;
  const SumaryCardWidget({
    super.key,
    required this.typeSummaryCard,
    required this.amount,
    required this.period,
    required this.action,
  });
  @override
  Widget build(BuildContext context) {
    var incomesIcon = const Icon(
      Icons.arrow_upward,
      color: AppColors.brandOnSuccessColor,
    );
    var spendingIcon =
        const Icon(Icons.arrow_downward, color: AppColors.brandOnErrorColor);
    return Container(
      height: AppSizes.heightXL,
      margin: const EdgeInsets.only(top: AppSizes.marginM),
      padding: const EdgeInsets.all(AppSizes.paddingL),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.brandLightColorOpacity,
        borderRadius: BorderRadius.all(AppRadius.small),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: AppSizes.heightL,
            width: AppSizes.widthL,
            margin: const EdgeInsets.only(right: AppSizes.marginM),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(AppRadius.xs),
                border: Border.all(color: AppColors.brandPrimaryColor)),
            child: typeSummaryCard == TypeSummaryCardEnum.incomes
                ? incomesIcon
                : spendingIcon,
          ),
          Expanded(
            child: Text(
              typeSummaryCard == TypeSummaryCardEnum.incomes
                  ? SumaryStrings.incomes.i18n
                  : SumaryStrings.spending.i18n,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: AppSizes.marginLSlim),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomMoneyDisplayWidget(
                  padding: const EdgeInsets.only(
                      top: AppSizes.paddingXS, right: AppSizes.paddingS),
                  amount: amount,
                  amountStyle: Theme.of(context).textTheme.displayMedium!,
                  amountStyleSmall: Theme.of(context).textTheme.displaySmall!,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    period,
                    style: const TextStyle(
                        color: AppColors.brandLightColor,
                        fontFamily: 'RobotoMono',
                        fontSize: AppSizes.fontSizeXS),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: Border.all(color: AppColors.brandLightColorBorder)),
            child: IconButton(
              icon: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              onPressed: action,
            ),
          ),
        ],
      ),
    );
  }
}
