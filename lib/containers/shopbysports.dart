import 'package:demo_app/pages/runningpage.dart';
import 'package:demo_app/utils/shopbysport/shopbysportcard1.dart';
import 'package:demo_app/utils/shopbysport/shopbysportcard2.dart';
import 'package:demo_app/utils/shopbysport/shopbysportcard3.dart';
import 'package:demo_app/utils/shopbysport/shopbysportcard4.dart';
import 'package:demo_app/utils/shopbysport/shopbysportcard5.dart';
import 'package:demo_app/utils/shopbysport/shopbysporttitle.dart';
import 'package:flutter/material.dart';

class ShopBySportsContainer extends StatelessWidget {
  const ShopBySportsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(right: 20),
        decoration: const BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(90),
                bottomRight: Radius.circular(90)),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 240, 235, 230),
              Color.fromARGB(255, 240, 183, 107),
              Color.fromARGB(255, 243, 149, 42)
            ])),
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Row(
              children: [ShopBySportTitle()],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RunningPage()));
                      },
                      child: const ShopBySportCard1(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RunningPage()));
                      },
                      child: const ShopBySportCard2(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RunningPage()));
                      },
                      child: const ShopBySportCard3(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RunningPage()));
                      },
                      child: const ShopBySportCard4(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RunningPage()));
                      },
                      child: const ShopBySportCard5(),
                    ),
                  ],
                )),
          ],
        ));
  }
}
