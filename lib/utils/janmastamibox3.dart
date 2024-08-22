import 'package:flutter/material.dart';

class Janmastamibox3 extends StatefulWidget {
  const Janmastamibox3({super.key});

  @override
  State<Janmastamibox3> createState() => _Bestgadget1State();
}

class _Bestgadget1State extends State<Janmastamibox3> {
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
              child: Image.asset('assets/images/induction2.png'),
            ),
            const Text("Induction Cooktop"),
            const Text(
              "Min 50% off",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ));
  }
}
