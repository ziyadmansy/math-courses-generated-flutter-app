import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/invoice_total_screen/models/invoice_total_model.dart';

/// A provider class for the InvoiceTotalScreen.
///
/// This provider manages the state of the InvoiceTotalScreen, including the
/// current invoiceTotalModelObj

// ignore_for_file: must_be_immutable
class InvoiceTotalProvider extends ChangeNotifier {
  InvoiceTotalModel invoiceTotalModelObj = InvoiceTotalModel();

  @override
  void dispose() {
    super.dispose();
  }
}
