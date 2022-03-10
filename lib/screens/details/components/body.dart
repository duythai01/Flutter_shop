// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/products.dart';
import 'package:shop/screens/details/components/colors_and_size.dart';
import 'package:shop/screens/details/components/product_tiltle_with_image.dart';

import 'add_to_cart.dart';
import 'counter_with_favorite.dart';
import 'decription.dart';

class Body extends StatelessWidget {
  final Product? product;
  const Body({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.33),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    // height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                    child: Column(children: <Widget>[
                      ColorsAndSize(product: product),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding/2.2,),
                      CounterWithFavorite(),
                      SizedBox(height: kDefaultPadding,),
                      AddToCart(product: product)
                    ])),
                productTiltleWithImage(product: product),
              ],
            ))
      ],
    ));
  }
}


