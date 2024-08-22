import 'package:flutter/material.dart';

class Janmastamiheader extends StatelessWidget {
  const Janmastamiheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 5),
                child: const Text(
                  "Top Picks For Janmastami",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15, top: 5),
                height: 23,
                width: 23,
                child: Image.asset('assets/images/right-chevron.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
