import 'package:flutter/material.dart';

class CameraContainer extends StatefulWidget {
  const CameraContainer({super.key});

  @override
  State<CameraContainer> createState() => _CameraContainerState();
}

class _CameraContainerState extends State<CameraContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
    );
  }
}
