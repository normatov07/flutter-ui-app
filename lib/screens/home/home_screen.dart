// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_test_1/constants.dart';
import 'package:flutter_test_1/models/category_model.dart';
import 'package:flutter_test_1/models/products_model.dart';
import 'package:flutter_test_1/screens/home/components/bottom_navigation_bar.dart';
import 'package:flutter_test_1/screens/home/components/category_section.dart';
import 'package:flutter_test_1/screens/home/components/search_bar.dart';
import 'package:flutter_test_1/size_config.dart';

import '../../components/app_bar.dart';
import '../../components/card_body.dart';
import '../../components/main_body.dart';
import '../../components/product_card_bottom.dart';
import '../../components/rounded_icon_button.dart';
import '../../models/best_selling.dart';
import 'components/best_selling_section.dart';
import 'components/product_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int cIndex = 0;

  void onTap(index){
    setState(() {
      cIndex = index;
    });
  }

   List  mainPages = const <Widget>[
     HomeContainer(),
     Text('salom'),
     Text('Hello'),
     Text('Hello'),
     Text('Hello'),
     Text('Hello'),
   ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: BuildBottomNavigationBar(onTap: onTap,cIndex: cIndex.toString(),),
      appBar: buildAppBar(
          title: Row(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: RoundedIconButton(
                  onTab: () {},
                  icon: Icons.menu,
                ))
          ]),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Icon(Icons.shopping_cart_outlined),
              ),
            ),
          ]),
      body: mainPages.elementAt(cIndex)
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeiht,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              'Explore your\nfovourite products',
              style: TextStyle(
                  color: kWhite, fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          SearchBar(),
          SizedBox(
            height: 28,
          ),
          Expanded(
              child: MainBody(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategorySection(),
                      SizedBox(
                        height: 30,
                      ),
                      ProductSlider(),
                      Padding(
                        padding: EdgeInsets.only(left: 42),
                        child: Text(
                          'Best Selling',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BestSellingSection(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
