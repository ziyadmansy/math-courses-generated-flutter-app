import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/invoice_card_screen/models/invoice_card_model.dart';

/// A provider class for the InvoiceCardScreen.
///
/// This provider manages the state of the InvoiceCardScreen, including the
/// current invoiceCardModelObj

// ignore_for_file: must_be_immutable
class InvoiceCardProvider extends ChangeNotifier {
  TextEditingController editTextController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  InvoiceCardModel invoiceCardModelObj = InvoiceCardModel();

  @override
  void dispose() {
    super.dispose();
    editTextController.dispose();
    cardNumberController.dispose();
    expirydateController.dispose();
    cvvController.dispose();
  }
}
