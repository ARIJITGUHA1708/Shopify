import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool loginStatus = false;
  void changeStatus() {
    loginStatus = !loginStatus;
    notifyListeners();
  }
}
