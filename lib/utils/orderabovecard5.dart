import 'package:flutter/material.dart';

class OrderAboveCard5 extends StatelessWidget {
  const OrderAboveCard5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(width: 1.1, color: Colors.black45),
          color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 100,
            child: Image.asset('assets/images/lamp.png'),
          ),
          const Text(
            "Min 80% off",
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          const Text(
            "Ceiling Lamps",
            style: TextStyle(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
