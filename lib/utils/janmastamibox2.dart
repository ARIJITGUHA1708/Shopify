import 'package:flutter/material.dart';

class Janmastamibox2 extends StatefulWidget {
  const Janmastamibox2({super.key});

  @override
  State<Janmastamibox2> createState() => _Bestgadget1State();
}

class _Bestgadget1State extends State<Janmastamibox2> {
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
              child: Image.asset('assets/images/saree.png'),
            ),
            const Text("Women's Saree"),
            const Text(
              "Min 50% off",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ));
  }
}
