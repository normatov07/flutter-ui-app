import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';
import '../models/products_model.dart';


class ProductCardBottom extends StatelessWidget {
  const ProductCardBottom({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$${product.price}',
            style: TextStyle(
                color: kWhite, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          RatingBar.builder(
            initialRating: product.rating,
            allowHalfRating: false,
            itemCount: product.rating.toInt(),
            ignoreGestures: true,
            // bu ratingni edit qilishni ignore qiladi !
            itemSize: 20,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: kWhite,
            ),
            onRatingUpdate: (rating) {},
          )
        ],
      ),
    );
  }
}
