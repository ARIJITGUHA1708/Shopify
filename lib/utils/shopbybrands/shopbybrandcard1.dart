import 'package:flutter/material.dart';

class ShopByBrandCard1 extends StatelessWidget {
  //const ShopByBrandCard1({super.key});
  var brandImage;
  var brandName;
  ShopByBrandCard1(this.brandImage, this.brandName);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
      height: 70,
      width: 200,
      child: Image.asset(
        brandImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
