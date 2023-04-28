import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/screens/home/i18n/home.i18n.dart';
// Shared Widgets
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show CustomMoneyDisplayWidget;
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;

class TopHomeBodyWidget extends StatelessWidget {
  const TopHomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingLSlim),
      width: MediaQuery.of(context).size.width,
      transform: Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
        color: AppColors.brandPrimaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: AppRadius.small, bottomRight: AppRadius.small),
      ),
      // height: 389,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 56),
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.brandLightColor),
          ),
        ],
      ),
    );
  }
}
