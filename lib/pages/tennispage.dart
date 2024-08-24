import 'package:demo_app/utils/running/runningcard.dart';
import 'package:flutter/material.dart';

class TennisPage extends StatelessWidget {
  const TennisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 91, 119, 213),
            Color.fromARGB(255, 227, 151, 176),
            Color.fromARGB(255, 201, 81, 121)
          ])),
      child: const RunningCard(),
    );
  }
}
