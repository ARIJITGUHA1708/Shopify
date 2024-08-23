import 'package:demo_app/utils/janmastamibox1.dart';
import 'package:demo_app/utils/janmastamibox2.dart';
import 'package:demo_app/utils/janmastamibox3.dart';
import 'package:demo_app/utils/janmastamibox4.dart';
import 'package:demo_app/utils/janmastamiheader.dart';
import 'package:flutter/material.dart';

class Janmastami extends StatelessWidget {
  const Janmastami({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 241, 247, 242),
            Color.fromARGB(255, 177, 247, 180)
          ])),
      child: const Column(
        children: [
          Row(
            children: [Janmastamiheader()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Janmastamibox1(), Janmastamibox2()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Janmastamibox3(), Janmastamibox4()],
          )
        ],
      ),
    );
  }
}
