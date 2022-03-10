import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if ( numberItems >1) {
              setState(() {
                numberItems--;
            });
            }
          }),
      // padLeft(x,y) de them y vao phia ben trai neu <x ki tu
      Text(numberItems.toString().padLeft(2, '0'),
          style: Theme.of(context).textTheme.headline5),
      buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numberItems++;
            });
          }),
    ]);
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 34,
      height: 26,
      // ignore: deprecated_member_use
      child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Icon(icon),
          onPressed: press),
    );
  }
}