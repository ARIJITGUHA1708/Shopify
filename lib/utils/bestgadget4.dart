import 'package:flutter/material.dart';

class Bestgadget4 extends StatefulWidget {
  const Bestgadget4({super.key});

  @override
  State<Bestgadget4> createState() => _Bestgadget1State();
}

class _Bestgadget1State extends State<Bestgadget4> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(width: 0.2, color: Colors.black),
            color: Colors.white),
        width: 150,
        height: 200,
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 100,
              child: Image.asset('assets/images/neckband.png'),
            ),
            const Text("Neckbands"),
            const Text(
              "Min 50% off",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ));
  }
}
