import 'package:flutter/material.dart';

class BestGadgetTitle extends StatefulWidget {
  const BestGadgetTitle({super.key});

  @override
  State<BestGadgetTitle> createState() => _BestGadgetTitleState();
}

class _BestGadgetTitleState extends State<BestGadgetTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 21, top: 10),
            child: const Text(
              "Best Gadgets & Appliances",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 21, top: 10),
            height: 20,
            width: 20,
            child: Image.asset('assets/images/right-chevron.png'),
          )
        ],
      ),
    );
  }
}
