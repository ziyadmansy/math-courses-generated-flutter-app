import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/live_session_screen/models/live_session_model.dart';

/// A provider class for the LiveSessionScreen.
///
/// This provider manages the state of the LiveSessionScreen, including the
/// current liveSessionModelObj

// ignore_for_file: must_be_immutable
class LiveSessionProvider extends ChangeNotifier {
  LiveSessionModel liveSessionModelObj = LiveSessionModel();

  @override
  void dispose() {
    super.dispose();
  }
}
