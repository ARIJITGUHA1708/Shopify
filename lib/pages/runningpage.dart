import 'package:demo_app/utils/running/runningcard.dart';
import 'package:flutter/material.dart';

class RunningPage extends StatelessWidget {
  const RunningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/running.png"), fit: BoxFit.cover),
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //  end: Alignment.bottomRight,
        //  colors: [
        //Color.fromARGB(255, 91, 119, 213),
        //Color.fromARGB(255, 240, 124, 163),
        // Color.fromARGB(255, 210, 151, 171),
        // Color.fromARGB(255, 234, 219, 224),
        //Color.fromARGB(255, 201, 81, 121)
        // ]
        // )
      ),
      child: const RunningCard(),
    );
  }
}
