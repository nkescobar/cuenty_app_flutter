import 'package:flutter/material.dart';
import 'package:cuenty_app/application/ui/screens/all_transaction_screen/index.dart'
    show DividerWithTextWidget;
import 'package:cuenty_app/core/index.dart' show TransactionsMocks;
import 'package:cuenty_app/application/ui/screens/home/widgets/index.dart'
    show TransactionDetailByDayWidget;
import 'package:cuenty_app/application/ui/screens/all_transaction_screen/i18n/all_transaction.i18n.dart';
import 'package:cuenty_app/application/app/design/index.dart'
    show AppColors, AppRadius;

class AllTransactionScreen extends StatefulWidget {
  const AllTransactionScreen({super.key});

  @override
  State<AllTransactionScreen> createState() => _AllTransactionScreenState();
}

class _AllTransactionScreenState extends State<AllTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 97,
          leadingWidth: 56,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: AppRadius.small, bottomRight: AppRadius.small)),
          backgroundColor: AppColors.brandLightColor,
          leading: Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.fromLTRB(16, 45, 0, 12),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.brandLightColorBorder),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.brandPrimaryColor,
                )),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 16, 12),
            child: Text(
              AllTransactionStrings.recentTrx,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          centerTitle: false,
        ),
        backgroundColor: AppColors.brandLightBackgroundColor,
        body: Column(children: [
          Container(
            height: 56,
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 32),
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indice) {
                var currentCategorie = TransactionsMocks.categories[indice];
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: MaterialButton(
                      padding: const EdgeInsets.all(10),
                      height: 35,
                      minWidth: 35,
                      color: indice == 0
                          ? AppColors.brandPrimaryColor
                          : AppColors.brandLightColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {},
                      child: Text(currentCategorie,
                          style: TextStyle(
                              color: indice != 0
                                  ? AppColors.brandPrimaryColor
                                  : AppColors.brandLightColor,
                              fontSize: 13))),
                );
              },
              itemCount: TransactionsMocks.categories.length,
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, month) {
                    return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, day) {
                          var currentday = TransactionsMocks
                              .transactionDetailByMonth[month]
                              .listofTransactions[day];
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TransactionDetailByDayWidget(
                                listofTransactions:
                                    currentday.listofTransactions,
                                day: currentday.day,
                                isToday: currentday.isToday,
                                dayNumber: currentday.dayNumber),
                          );
                        },
                        separatorBuilder: (context, indice) => const SizedBox(
                              height: 24,
                            ),
                        itemCount: TransactionsMocks
                            .transactionDetailByMonth[month]
                            .listofTransactions
                            .length);
                  },
                  separatorBuilder: (context, month) => Padding(
                        padding: const EdgeInsets.fromLTRB(16, 54, 16, 24),
                        child: DividerWithTextWidget(
                            title: TransactionsMocks
                                .transactionDetailByMonth[month + 1].month),
                      ),
                  itemCount:
                      TransactionsMocks.transactionDetailByMonth.length)),
        ]));
  }
}
