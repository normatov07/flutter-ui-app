import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_test_1/components/main_body.dart';
import 'package:flutter_test_1/models/products_model.dart';
import 'package:flutter_test_1/size_config.dart';

import '../../components/app_bar.dart';
import '../../components/card_button.dart';
import '../../components/primary_button.dart';
import '../../components/rounded_icon_button.dart';
import '../../constants.dart';
import 'companents/product_images.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(
          title: Row(children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: RoundedIconButton(
                  onTab: () {
                    Navigator.pop(context);
                  },
                  icon: Icons.arrow_back,
                ))
          ]),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
          ]),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.only(
          left: 50,
          right: 37,
          bottom: 30,
        ),
        child: PrimaryButton(
          onTap: (){},
          text: 'Buy Now',
        )
      ),
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeiht,
        child: Column(
          children: [
            Hero(
              tag: product.id,
              child: Image.asset(
                product.images[0],
                width: SizeConfig.getScreenPropotionWidth(250),
                height: SizeConfig.getScreenPropotionHeight(250),
              ),
            ),
            Expanded(
              child: MainBody(
                  padding: const EdgeInsets.only(top: 43, left: 50, right: 37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: const TextStyle(
                                color: kPrimaryColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold),
                          ),
                          CardButton(
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Photos',
                        style: TextStyle(
                            color: kTextLightColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ProductImages(product: product),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        product.modelNo,
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      RatingBar.builder(
                        initialRating: product.rating,
                        allowHalfRating: false,
                        itemCount: product.rating.toInt(),
                        ignoreGestures: true,
                        // bu ratingni edit qilishni ignore qiladi !
                        itemSize: 20,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        product.description,
                        style: const TextStyle(
                            color: kTextLightColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}


