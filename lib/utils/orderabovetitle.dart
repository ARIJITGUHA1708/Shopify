import 'package:flutter/material.dart';

class OrderAboveTitle extends StatelessWidget {
  const OrderAboveTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5, left: 5),
            child: const Text(
              "Order Above 149/-",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 5),
            child: const Text(
              "& ENJOY FREE SHIPPING",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
