// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/products.dart';

class productTiltleWithImage extends StatelessWidget {
  const productTiltleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Abc Def Agjh Getee",
              style: TextStyle(
                color: Colors.white,
              )),
          Text(product!.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom:kDefaultPadding),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Price \n"),
                  TextSpan(
                      text: "\$${product!.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ])),
              ),
              SizedBox(
                width: kDefaultPadding*4,
              ),
              Expanded(
                child: Hero(
                  tag:"${product!.id}",
                  child: Image.asset(product!.image, fit: BoxFit.fill)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

