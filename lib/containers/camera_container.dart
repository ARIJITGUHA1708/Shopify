import 'dart:io';

import 'package:demo_app/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class CameraContainer extends StatefulWidget {
  const CameraContainer({super.key});

  @override
  State<CameraContainer> createState() => _CameraContainerState();
}

class _CameraContainerState extends State<CameraContainer> {
  File? _selectedImage;
  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedCameraImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice
          .front, // chnage the default behavior of open the front camera
      //(by default it open rear camera when you click on camera tab)
      imageQuality:
          100, //this can be between 0 to 100, 0 means lower quality and size,
      // and 100 means higher quality and size
    );
    if (returnedCameraImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(returnedCameraImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.amber,
      child: Consumer<LoginProvider>(
        builder: (context, value, child) => Column(
          children: [
            Container(
              child: Image.network(
                value.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              value.userInformation!['firstName'],
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
              value.userInformation!['lastName'],
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
              value.userInformation!['gender'],
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
              value.userInformation!['username'],
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              value.userInformation!['email'],
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            MaterialButton(
              onPressed: () {
                _pickImageFromGallery();
              },
              color: Colors.blue,
              child: const Text(
                "Pick Image From Gallery",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                _pickImageFromCamera();
              },
              color: Colors.red,
              child: const Text(
                "Pick Image From Camera",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _selectedImage != null
                ? SizedBox(
                    height: 400,
                    width: 320,
                    child: Image.file(
                      _selectedImage!,
                      fit: BoxFit.fill,
                    ))
                : const Text(
                    "Please Select An Image",
                    style: TextStyle(fontSize: 16),
                  ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                print(_selectedImage);
                value.changeImageFromCamera(_selectedImage);
              },
              child: const Text(
                "Change",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
