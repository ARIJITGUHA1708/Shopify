import 'package:flutter/material.dart';

class ShopByBrandTitle extends StatelessWidget {
  const ShopByBrandTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: const Text(
        "Shop By Brands",
        style: TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}
