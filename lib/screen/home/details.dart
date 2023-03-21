import 'package:designproject/screen/home/components/productcard.dart';
import 'package:designproject/screen/home/components/sectiontitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';
import '../../../model/Product.dart';
import '../../model/Category.dart';
import 'Languages.dart';
import 'menu.dart';

class DetailsScreen extends StatelessWidget {

  DetailsScreen({
    Key? key, required this.product, required this.category,
  }) : super(key: key);
  final Product product;
  final Category category;
  List imgList = [
    "watch1.gif",
    "classic.jpg",
    "smart.jpg",
    "sport.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff385ecb),
            leading: IconButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const menu()
                  ));
              },
              icon: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  SvgPicture.asset("assets/icons/Location.svg"),
                const SizedBox(width: defaultPadding / 2),
                Text(
                  "AR",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.language),
                //
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Languages()
                      ));},
              ),
            ],
          ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: SectionTitle(
              title: "Watches",
              pressSeeAll: () {},
            ),
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
          SizedBox(height:30),
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
      ),
    );
  }
}