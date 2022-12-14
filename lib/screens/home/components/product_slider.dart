// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_test_1/screens/details/product_details_screen.dart';

import '../../../components/card_body.dart';
import '../../../components/product_card_bottom.dart';
import '../../../constants.dart';
import '../../../models/products_model.dart';
import '../../../size_config.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.getScreenPropotionHeight(330),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardBody(
            width: SizeConfig.getScreenPropotionWidth(200),
            height: SizeConfig.getScreenPropotionHeight(300),
            index: index,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: demoProducts[index],),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    demoProducts[index].name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kTextColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    demoProducts[index].modelNo,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                ),
                Center(
                  child: Hero(
                    tag: demoProducts[index].id,
                    child: Image.asset(
                      demoProducts[index].images[0],
                      width: SizeConfig.getScreenPropotionWidth(100),
                      height: SizeConfig.getScreenPropotionHeight(170),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: ProductCardBottom(
                    product: demoProducts[index],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: demoProducts.length,
      ),
    );
  }
}
