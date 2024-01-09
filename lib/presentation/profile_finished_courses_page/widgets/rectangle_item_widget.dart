import '../models/rectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  RectangleItemWidget(
    this.rectangleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RectangleItemModel rectangleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 116.v,
        child: VerticalDivider(
          width: 5.h,
          thickness: 5.v,
        ),
      ),
    );
  }
}
