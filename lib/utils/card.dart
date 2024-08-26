import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({super.key});

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 140,
            width: 120,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 85,
                  width: 90,
                  child: Image.asset(
                    'assets/images/shoe.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("Woodland"),
                const Text(
                  "Upto 70% off",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 140,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 85,
                  width: 90,
                  child: Image.asset(
                    'assets/images/watch.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("Crew Grow"),
                const Text(
                  "Sale Tomorrow",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 140,
            width: 120,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 85,
                  width: 90,
                  child: Image.asset(
                    'assets/images/makeup.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("Makeup Brushes"),
                const Text(
                  "Under 169/-",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
