import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/video_page_two_screen/models/video_page_two_model.dart';

/// A provider class for the VideoPageTwoScreen.
///
/// This provider manages the state of the VideoPageTwoScreen, including the
/// current videoPageTwoModelObj

// ignore_for_file: must_be_immutable
class VideoPageTwoProvider extends ChangeNotifier {
  VideoPageTwoModel videoPageTwoModelObj = VideoPageTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
