import 'package:flutter/material.dart';
//Strings
import 'package:cuenty_app/application/ui/screens/home/i18n/home.i18n.dart';
// Shared widgets
import 'package:cuenty_app/application/ui/shared/widgets/index.dart'
    show ProductDetailCardWidget, TypeProductDetailCard;

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(
          style: const ButtonStyle(alignment: Alignment.centerRight),
          child: Text(
            HomeStrings.viewAll.i18n,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(53, 97, 254, 1)),
          ),
          onPressed: () {
            print('le diste clic a view all');
          },
        ),
        const ProductDetailCardWidget(
          pathToProductImage: 'assets/images/pizza.png',
          amount: 391254.01,
          productName: 'Food & Drink',
          currentSells: '2250',
          percentage: '1.8',
          typeProductDetailCard: TypeProductDetailCard.incomes,
        ),
        const ProductDetailCardWidget(
          typeProductDetailCard: TypeProductDetailCard.incomes,
          pathToProductImage: 'assets/images/tv.png',
          amount: 3176254.01,
          productName: 'Electronics',
          currentSells: '2250',
          percentage: '43.6',
        ),
        const ProductDetailCardWidget(
          typeProductDetailCard: TypeProductDetailCard.outcomes,
          pathToProductImage: 'assets/images/health.png',
          amount: 38.01,
          productName: 'Health',
          currentSells: '110',
          percentage: '25.8',
        ),
      ],
    );
  }
}
