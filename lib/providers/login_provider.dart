import 'dart:io';

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool loginStatus = false;
  var image = "";
  var cameraImage;
  Map<String, dynamic>? userInformation;
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

  void allDataOfUser(Map<String, dynamic> userInformation) {
    this.userInformation = userInformation;
    print("\nUSER INFORMATION:\n$userInformation");
    notifyListeners();
  }
}
