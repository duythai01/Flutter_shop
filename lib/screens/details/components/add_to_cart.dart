import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/models/products.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        margin:EdgeInsets.only(right:kDefaultPadding),
        height: 46,
        width: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: product!.color)),
        child: IconButton(
          icon: SvgPicture.asset(
              "assets/icons/add_to_cart.svg",color: product!.color),
          onPressed: () {},
        ),
      ),
      Expanded(
        child: SizedBox(
          height:50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ),
            color: product!.color,
            child: Text(
              "Buy Now".toUpperCase(),
              style: TextStyle(
                fontSize:17,
                fontWeight: FontWeight.bold,
                color:Colors.white,
              )
            ),
            onPressed: (){},
          )
        ),
      )
    ]);
  }
}