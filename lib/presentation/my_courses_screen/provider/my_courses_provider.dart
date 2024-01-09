import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/my_courses_screen/models/my_courses_model.dart';

/// A provider class for the MyCoursesScreen.
///
/// This provider manages the state of the MyCoursesScreen, including the
/// current myCoursesModelObj

// ignore_for_file: must_be_immutable
class MyCoursesProvider extends ChangeNotifier {
  MyCoursesModel myCoursesModelObj = MyCoursesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
