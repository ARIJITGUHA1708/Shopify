import 'package:demo_app/utils/bestgadget1.dart';
import 'package:demo_app/utils/bestgadget2.dart';
import 'package:demo_app/utils/bestgadget3.dart';
import 'package:demo_app/utils/bestgadget4.dart';
import 'package:demo_app/utils/bestgadgettitle.dart';
import 'package:flutter/material.dart';

class BestGadgetContainer extends StatefulWidget {
  const BestGadgetContainer({super.key});

  @override
  State<BestGadgetContainer> createState() => _BestGadgetContainerState();
}

class _BestGadgetContainerState extends State<BestGadgetContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 252, 231, 255),
                Color.fromARGB(255, 187, 142, 194)
              ],
            )),
        width: MediaQuery.of(context).size.width,
        height: 480,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                BestGadgetTitle(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Bestgadget1(), Bestgadget2()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Bestgadget3(),
                Bestgadget4(),
              ],
            )
          ],
        ));
  }
}
