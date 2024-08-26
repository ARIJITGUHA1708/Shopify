import 'dart:io';

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool loginStatus = false;
  var image = "";
  var cameraImage;
  void changeStatus() {
    loginStatus = !loginStatus;
    notifyListeners();
  }

  void changeImage(var image) {
    this.image = image;
    notifyListeners();
  }

  void changeImageFromCamera(File? image) {
    cameraImage = image;
    notifyListeners();
  }
}
