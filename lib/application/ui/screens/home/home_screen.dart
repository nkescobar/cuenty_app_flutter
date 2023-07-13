import 'package:flutter/material.dart';
// Design
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius, AppSizes;
// Widgets
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show
        CategoriesWidget,
        HomeAppBarTitleWidget,
        MidHomeBodyWidget,
        RecentTransactionsWidget,
        TopHomeBodyWidget;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var buttonStyleInactive = ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.brandLightColor,
      shadowColor: AppColors.brandLightColor);
  var buttonStyleActive = ElevatedButton.styleFrom(
      backgroundColor: AppColors.brandSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // <-- Radius
      ));
  Widget currentDetailWidget = const CategoriesWidget();
  late ButtonStyle categorieBtnStyle;
  late ButtonStyle recentTransactionsBtnStyle;

  @override
  void initState() {
    super.initState();
    categorieBtnStyle = buttonStyleActive;
    recentTransactionsBtnStyle = buttonStyleInactive;
  }

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
      body: SafeArea(
        child: Column(
          children: [
            const TopHomeBodyWidget(),
            MidHomeBodyWidget(
              categorieBtnStyle: categorieBtnStyle,
              recentTransactionsBtnStyle: recentTransactionsBtnStyle,
              categoriesBtnAction: () {
                setState(() {
                  currentDetailWidget = const CategoriesWidget();
                  categorieBtnStyle = buttonStyleActive;
                  recentTransactionsBtnStyle = buttonStyleInactive;
                });
              },
              recentBtnAction: () {
                setState(() {
                  categorieBtnStyle = buttonStyleInactive;
                  recentTransactionsBtnStyle = buttonStyleActive;
                  currentDetailWidget = const RecentTransactionsWidget();
                });
              },
            ),
            Expanded(child: currentDetailWidget)
          ],
        ),
      ),
    );
  }
}
