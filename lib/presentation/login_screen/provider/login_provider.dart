import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/login_screen/models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj

// ignore_for_file: must_be_immutable
class LoginProvider extends ChangeNotifier {
  TextEditingController editTextController = TextEditingController();

  TextEditingController eyeslashController = TextEditingController();

  LoginModel loginModelObj = LoginModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    editTextController.dispose();
    eyeslashController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
