import 'package:demo_app/utils/running/runningcard.dart';
import 'package:flutter/material.dart';

class BasketballPage extends StatelessWidget {
  const BasketballPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/basketball.png"),
              fit: BoxFit.cover)),
      child: const RunningCard(),
    );
  }
}
