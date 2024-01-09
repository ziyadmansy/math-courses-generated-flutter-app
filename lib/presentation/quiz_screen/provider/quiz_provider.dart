import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/quiz_screen/models/quiz_model.dart';

/// A provider class for the QuizScreen.
///
/// This provider manages the state of the QuizScreen, including the
/// current quizModelObj

// ignore_for_file: must_be_immutable
class QuizProvider extends ChangeNotifier {
  QuizModel quizModelObj = QuizModel();

  @override
  void dispose() {
    super.dispose();
  }
}
