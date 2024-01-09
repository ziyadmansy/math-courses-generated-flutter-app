import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/my_courses_parts_screen/models/my_courses_parts_model.dart';

/// A provider class for the MyCoursesPartsScreen.
///
/// This provider manages the state of the MyCoursesPartsScreen, including the
/// current myCoursesPartsModelObj

// ignore_for_file: must_be_immutable
class MyCoursesPartsProvider extends ChangeNotifier {
  MyCoursesPartsModel myCoursesPartsModelObj = MyCoursesPartsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
