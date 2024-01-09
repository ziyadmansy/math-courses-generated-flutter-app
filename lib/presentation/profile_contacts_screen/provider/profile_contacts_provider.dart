import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/profile_contacts_screen/models/profile_contacts_model.dart';

/// A provider class for the ProfileContactsScreen.
///
/// This provider manages the state of the ProfileContactsScreen, including the
/// current profileContactsModelObj
class ProfileContactsProvider extends ChangeNotifier {
  ProfileContactsModel profileContactsModelObj = ProfileContactsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
