import 'package:flutter/material.dart';

import '../../../components/card_body.dart';
import '../../../components/product_card_bottom.dart';
import '../../../constants.dart';
import '../../../models/best_selling.dart';
import '../../../models/products_model.dart';
import '../../../size_config.dart';
import '../../details/product_details_screen.dart';



class BestSellingSection extends StatelessWidget {
  const BestSellingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: SizeConfig.getScreenPropotionHeight(300),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardBody(
              width: SizeConfig.getScreenPropotionWidth(298),
              height: SizeConfig.getScreenPropotionHeight(300),
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
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            bestSelling[index].description,
                            style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Hero(
                              tag: bestSelling[index].id,
                              child: Image.asset(
                                bestSelling[index].images[0],
                                width: SizeConfig.getScreenPropotionWidth(100),
                                height: SizeConfig.getScreenPropotionHeight(155),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ProductCardBottom(
                      product: demoProducts[index],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(product: demoProducts[index],),
                  ),
                );
              },
              index: index,
          );
        },
        itemCount: bestSelling.length,
      ),
    );
  }
}

