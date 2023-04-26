import 'package:flutter/material.dart';
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppSizes;
// Widgets
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show AppBarContainerHeaderWidget;

class HomeAppBarTitleWidget extends StatelessWidget {
  const HomeAppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: AppSizes.widthL,
          height: AppSizes.heightL,
          margin: const EdgeInsets.only(right: AppSizes.marginL),
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/user.png')),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        Expanded(
          child: Text(
            'Store Name',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        AppBarContainerHeaderWidget(
          configMargin: const EdgeInsets.only(right: AppSizes.marginL),
          iconButton: IconButton(
            onPressed: () => debugPrint('presionarion icono notificiaciones'),
            icon: const Icon(
              Icons.notifications,
              color: AppColors.brandPrimaryColor,
            ),
          ),
        ),
        AppBarContainerHeaderWidget(
          iconButton: IconButton(
            onPressed: () => debugPrint('presionarion icono mas'),
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.brandPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
