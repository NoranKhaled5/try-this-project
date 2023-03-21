import 'package:designproject/screen/home/favourite.dart';
import 'package:designproject/screen/home/menu.dart';
import 'package:designproject/screen/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../constant.dart';
import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular_product.dart';
import 'components/saerch_form.dart';
import 'Languages.dart';

class classic extends StatelessWidget {
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
              "Classic",
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Watches for you",
              style: TextStyle(fontSize: 18),
            ),

            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xff385ecb),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: GNav(
            backgroundColor: Color(0xff385ecb),
            color: Colors.white,
            tabBackgroundColor: Colors.blueAccent.shade100 ,
            activeColor:Colors.white,
            gap: 8,
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(icon: Icons.home,text: 'Home',onPressed: (){},),
              GButton(icon: Icons.favorite,text: 'Likes',onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const favourite()
                  ));}),
              GButton(icon: Icons.settings,text: 'setting',
                  onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const profile()
                      ));}),

            ],
          ),
        ),
      ),
    );
  }
}