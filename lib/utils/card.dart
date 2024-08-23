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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 85,
                  width: 90,
                  child: Image.asset(
                    'assets/images/shoe.png',
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
            //margin: const EdgeInsets.only(left: 10, top: 5),
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 85,
                  width: 90,
                  child: Image.asset(
                    'assets/images/watch.png',
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
            //margin: const EdgeInsets.only(left: 10, top: 5),
            decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  height: 80,
                  width: 100,
                  child: Image.asset(
                    'assets/images/makeup2.png',
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
