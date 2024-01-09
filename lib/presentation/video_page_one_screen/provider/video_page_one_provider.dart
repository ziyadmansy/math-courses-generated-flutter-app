import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/video_page_one_screen/models/video_page_one_model.dart';

/// A provider class for the VideoPageOneScreen.
///
/// This provider manages the state of the VideoPageOneScreen, including the
/// current videoPageOneModelObj

// ignore_for_file: must_be_immutable
class VideoPageOneProvider extends ChangeNotifier {
  VideoPageOneModel videoPageOneModelObj = VideoPageOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
