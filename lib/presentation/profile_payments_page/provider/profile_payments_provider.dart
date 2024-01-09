import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/profile_payments_page/models/profile_payments_model.dart';

/// A provider class for the ProfilePaymentsPage.
///
/// This provider manages the state of the ProfilePaymentsPage, including the
/// current profilePaymentsModelObj

// ignore_for_file: must_be_immutable
class ProfilePaymentsProvider extends ChangeNotifier {
  ProfilePaymentsModel profilePaymentsModelObj = ProfilePaymentsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
