import 'package:demo_app/utils/shopbybrands/shopbybrandcard1.dart';
import 'package:flutter/material.dart';

class Brands {
  var brandImage;
  var brandName;
  Brands(this.brandImage, this.brandName);
}

class ShopByBrandList extends StatelessWidget {
  const ShopByBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    Brands b1 = Brands("assets/images/woodland.png", "Woodland");
    Brands b2 = Brands("assets/images/bata.png", "Bata");
    Brands b3 = Brands("assets/images/adidas.png", "Adidas");
    Brands b4 = Brands("assets/images/nike.webp", "Nike");
    List<Brands> listofbrands = [b1, b2, b3, b4];

    return SizedBox(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 10, right: 10),
          itemBuilder: (context, index) {
            return ShopByBrandCard1(
                listofbrands[index].brandImage, listofbrands[index].brandName);
          },
          itemCount: listofbrands.length),
    );
  }
}
