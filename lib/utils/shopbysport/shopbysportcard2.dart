import 'package:flutter/material.dart';

class ShopBySportCard2 extends StatelessWidget {
  const ShopBySportCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 5, bottom: 20),
        height: 220,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(width: 1.0, color: Colors.transparent),
            image: const DecorationImage(
                image: AssetImage('assets/images/football.png'),
                fit: BoxFit.fill)),
        child: Container(
          padding: const EdgeInsets.only(top: 180, left: 15),
          height: 50,
          width: 50,
          child: const Text(
            "Football",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
