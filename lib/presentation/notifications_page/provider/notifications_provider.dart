import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/notifications_page/models/notifications_model.dart';

/// A provider class for the NotificationsPage.
///
/// This provider manages the state of the NotificationsPage, including the
/// current notificationsModelObj

// ignore_for_file: must_be_immutable
class NotificationsProvider extends ChangeNotifier {
  NotificationsModel notificationsModelObj = NotificationsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
