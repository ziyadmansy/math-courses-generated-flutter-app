import '../../../core/app_export.dart';

/// This class is used in the [sessioncomponentsection_item_widget] screen.
class SessioncomponentsectionItemModel {
  SessioncomponentsectionItemModel({
    this.sessionText,
    this.descriptionText,
    this.progressText,
    this.id,
  }) {
    sessionText = sessionText ?? "Session 2";
    descriptionText =
        descriptionText ?? "Here you will be learning basics of Algbera";
    progressText = progressText ?? "0/5  Parts";
    id = id ?? "";
  }

  String? sessionText;

  String? descriptionText;

  String? progressText;

  String? id;
}
