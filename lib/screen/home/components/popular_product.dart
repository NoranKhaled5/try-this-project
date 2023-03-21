import 'package:designproject/screen/home/components/productcard.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/Product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),

        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child:ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  bgColor: demo_product[index].bgColor,
                  //press: () {},
                ),

                )
              ),
            ),
          ),
      ],
    );
  }
}