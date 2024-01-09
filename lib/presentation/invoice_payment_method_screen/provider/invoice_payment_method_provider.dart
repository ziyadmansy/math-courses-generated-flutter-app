import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/invoice_payment_method_screen/models/invoice_payment_method_model.dart';

/// A provider class for the InvoicePaymentMethodScreen.
///
/// This provider manages the state of the InvoicePaymentMethodScreen, including the
/// current invoicePaymentMethodModelObj

// ignore_for_file: must_be_immutable
class InvoicePaymentMethodProvider extends ChangeNotifier {
  InvoicePaymentMethodModel invoicePaymentMethodModelObj =
      InvoicePaymentMethodModel();

  @override
  void dispose() {
    super.dispose();
  }
}
