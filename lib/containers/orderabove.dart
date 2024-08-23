import 'package:demo_app/utils/orderabovecard1.dart';
import 'package:demo_app/utils/orderabovecard2.dart';
import 'package:demo_app/utils/orderabovecard3.dart';
import 'package:demo_app/utils/orderabovecard4.dart';
import 'package:demo_app/utils/orderabovecard5.dart';
import 'package:demo_app/utils/orderabovetitle.dart';
import 'package:flutter/material.dart';

class OrderAboveContainer extends StatelessWidget {
  const OrderAboveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 219, 231, 240),
            Color.fromARGB(255, 79, 169, 243),
            Color.fromARGB(255, 38, 153, 248)
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          //borderRadius: BorderRadius.circular(20)
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90), topLeft: Radius.circular(90))),
      child: const Column(
        children: [
          OrderAboveTitle(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      OrderAboveCard1(),
                      OrderAboveCard2(),
                      OrderAboveCard3(),
                      OrderAboveCard4(),
                      OrderAboveCard5()
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
