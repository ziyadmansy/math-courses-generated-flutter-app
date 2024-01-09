import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/payment_success_screen/models/payment_success_model.dart';

/// A provider class for the PaymentSuccessScreen.
///
/// This provider manages the state of the PaymentSuccessScreen, including the
/// current paymentSuccessModelObj
class PaymentSuccessProvider extends ChangeNotifier {
  PaymentSuccessModel paymentSuccessModelObj = PaymentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
