import 'package:flutter/material.dart';
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.only(top: 56),
          child: Text(
            'Your Budget test',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ]),
    );
  }
}
