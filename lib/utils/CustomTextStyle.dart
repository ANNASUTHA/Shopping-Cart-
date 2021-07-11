import 'package:flutter/material.dart';

class CustomTextStyle {
  static var textFormFieldRegular = TextStyle(
      fontSize: 18,
      fontFamily: "Helvetica",
      color: Colors.black,
      fontWeight: FontWeight.bold);

  static var textFormFieldLight =
      textFormFieldRegular.copyWith(fontWeight: FontWeight.w200);

  static var textFormFieldMedium =
      textFormFieldRegular.copyWith(fontWeight: FontWeight.bold);

  static var textFormFieldSemiBold =
      textFormFieldRegular.copyWith(fontWeight: FontWeight.w600);

  static var textFormFieldBold =
      textFormFieldRegular.copyWith(fontWeight: FontWeight.w700);

  static var textFormFieldBlack =
      textFormFieldRegular.copyWith(fontWeight: FontWeight.bold);
}
