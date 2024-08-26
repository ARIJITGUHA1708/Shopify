import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool loginStatus = false;
  var image = "";
  void changeStatus() {
    loginStatus = !loginStatus;
    notifyListeners();
  }

  void changeImage(var image) {
    this.image = image;
    print("$image");
    notifyListeners();
  }
}
