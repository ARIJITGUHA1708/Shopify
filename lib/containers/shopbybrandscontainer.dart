import 'package:demo_app/utils/shopbybrands/shopbybrandlist.dart';
import 'package:demo_app/utils/shopbybrands/shopbybrandstitle.dart';
import 'package:flutter/material.dart';

class ShopByBrandContainer extends StatelessWidget {
  const ShopByBrandContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80), bottomLeft: Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 152, 60, 232),
                Color.fromARGB(255, 195, 144, 227),
                Color.fromARGB(255, 215, 205, 224),
              ])),
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.only(left: 20),
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        children: [ShopByBrandTitle(), ShopByBrandList()],
      ),
    );
  }
}
