import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/mock_exam_screen/models/mock_exam_model.dart';

/// A provider class for the MockExamScreen.
///
/// This provider manages the state of the MockExamScreen, including the
/// current mockExamModelObj

// ignore_for_file: must_be_immutable
class MockExamProvider extends ChangeNotifier {
  MockExamModel mockExamModelObj = MockExamModel();

  @override
  void dispose() {
    super.dispose();
  }
}
