import 'package:flutter/material.dart';
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;

class AppBarContainerHeaderWidget extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;
  const AppBarContainerHeaderWidget(
      {super.key, required this.iconButton, this.configMargin});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.heightL,
      width: AppSizes.widthL,
      margin: configMargin,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.brandLightColorBorder),
          borderRadius: const BorderRadius.all(AppRadius.xs)),
      child: iconButton,
    );
  }
}
