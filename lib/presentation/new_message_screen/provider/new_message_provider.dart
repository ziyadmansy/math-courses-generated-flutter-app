import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/new_message_screen/models/new_message_model.dart';

/// A provider class for the NewMessageScreen.
///
/// This provider manages the state of the NewMessageScreen, including the
/// current newMessageModelObj

// ignore_for_file: must_be_immutable
class NewMessageProvider extends ChangeNotifier {
  NewMessageModel newMessageModelObj = NewMessageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
