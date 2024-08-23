import 'package:flutter/material.dart';

class ShopBySportTitle extends StatelessWidget {
  const ShopBySportTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: const Text(
          "Shop By Sport",
          style: TextStyle(fontWeight: FontWeight.w800),
        ));
  }
}
