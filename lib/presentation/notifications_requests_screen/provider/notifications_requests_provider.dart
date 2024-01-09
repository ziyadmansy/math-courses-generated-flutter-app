import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/notifications_requests_screen/models/notifications_requests_model.dart';

/// A provider class for the NotificationsRequestsScreen.
///
/// This provider manages the state of the NotificationsRequestsScreen, including the
/// current notificationsRequestsModelObj

// ignore_for_file: must_be_immutable
class NotificationsRequestsProvider extends ChangeNotifier {
  NotificationsRequestsModel notificationsRequestsModelObj =
      NotificationsRequestsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
