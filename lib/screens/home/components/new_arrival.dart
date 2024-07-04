import 'package:flutter/material.dart';
import 'package:novashopping/models/product_card.dart' as model;
import 'package:novashopping/screens/home/constants.dart';
import 'package:novashopping/screens/home/components/product_card.dart' as component;

import '../home_screen.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arrival",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              model.demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: component.ProductCard(
                  title: model.demo_product[index].title,
                  image: model.demo_product[index].image,
                  price: model.demo_product[index].price,
                  bgColor: model.demo_product[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
