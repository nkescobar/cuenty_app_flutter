import 'package:flutter/material.dart';
// Designs
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppSizes;
//Strings
import 'package:cuenty_app/application/ui/screens/home/i18n/home.i18n.dart';

class MidHomeBodyWidget extends StatelessWidget {
  final ButtonStyle categorieBtnStyle;
  final ButtonStyle recentTransactionsBtnStyle;
  final void Function()? categoriesBtnAction;
  final void Function()? recentBtnAction;
  const MidHomeBodyWidget(
      {super.key,
      required this.categorieBtnStyle,
      required this.recentTransactionsBtnStyle,
      required this.categoriesBtnAction,
      required this.recentBtnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: AppSizes.paddingLSlim, right: AppSizes.paddingLSlim),
      height: AppSizes.heightXLSlim,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.brandLightColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: categorieBtnStyle,
              onPressed: categoriesBtnAction,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.paddingL, horizontal: AppSizes.paddingL),
                child: Text(
                  HomeStrings.categories.i18n,
                  style: const TextStyle(
                      color: AppColors.brandDarkColor,
                      fontSize: AppSizes.fontSizeM),
                ),
              )),
          ElevatedButton(
            style: recentTransactionsBtnStyle,
            onPressed: recentBtnAction,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.paddingL, horizontal: AppSizes.paddingL),
              child: Text(
                HomeStrings.recentTransaction.i18n,
                style: const TextStyle(
                    color: AppColors.brandLigthDarkColor,
                    fontSize: AppSizes.fontSizeM),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
