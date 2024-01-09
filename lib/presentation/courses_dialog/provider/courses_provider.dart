import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/courses_dialog/models/courses_model.dart';

/// A provider class for the CoursesDialog.
///
/// This provider manages the state of the CoursesDialog, including the
/// current coursesModelObj
class CoursesProvider extends ChangeNotifier {
  CoursesModel coursesModelObj = CoursesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
