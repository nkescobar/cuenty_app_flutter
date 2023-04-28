import 'package:flutter/material.dart';
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;
// Widgets
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show HomeAppBarTitleWidget, TopHomeBodyWidget;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSizes.heightXL,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: AppRadius.small, bottomRight: AppRadius.small)),
        backgroundColor: AppColors.brandLightColor,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(AppSizes.paddingLSlim,
              AppSizes.paddingXXL, AppSizes.paddingLSlim, AppSizes.paddingL),
          child: HomeAppBarTitleWidget(),
        ),
      ),
      body: Column(children: const [
        TopHomeBodyWidget(),
      ]),
    );
  }
}
