import 'package:flutter/material.dart';

class ShopByBrandCard1 extends StatelessWidget {
  //ShopByBrandCard1({super.key});
  var brandImage;
  var brandName;
  ShopByBrandCard1(this.brandImage, this.brandName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
      width: 220,
      child: Image.asset(
        brandImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
