import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/profile_finished_courses_page/models/profile_finished_courses_model.dart';
import '../models/rectangle_item_model.dart';

/// A provider class for the ProfileFinishedCoursesPage.
///
/// This provider manages the state of the ProfileFinishedCoursesPage, including the
/// current profileFinishedCoursesModelObj

// ignore_for_file: must_be_immutable
class ProfileFinishedCoursesProvider extends ChangeNotifier {
  ProfileFinishedCoursesModel profileFinishedCoursesModelObj =
      ProfileFinishedCoursesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
