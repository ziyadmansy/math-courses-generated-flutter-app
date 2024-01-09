import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/headquarter_chat_screen/models/headquarter_chat_model.dart';

/// A provider class for the HeadquarterChatScreen.
///
/// This provider manages the state of the HeadquarterChatScreen, including the
/// current headquarterChatModelObj

// ignore_for_file: must_be_immutable
class HeadquarterChatProvider extends ChangeNotifier {
  TextEditingController responseController = TextEditingController();

  HeadquarterChatModel headquarterChatModelObj = HeadquarterChatModel();

  @override
  void dispose() {
    super.dispose();
    responseController.dispose();
  }
}
