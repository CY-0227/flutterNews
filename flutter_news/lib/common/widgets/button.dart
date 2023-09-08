import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget btnElevatedButtonWidget({
  required VoidCallback onPressed,
  double width = 140,
  double height = 40,
  Color gbColor = AppColors.primaryElement,
  String title = 'button',
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  String fontName = kMontserrat,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return Container(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(gbColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontName,
          fontSize: duSetFontSize(fontSize),
          fontWeight: fontWeight,
          height: 1,
        ),
      ),
    ),
  );
}

Widget btnElevatedButtonBorderOnlyWidget({
  required VoidCallback onPressed,
  double width = 88,
  double height = 44,
  String iconFileName = '',
}) {
  return Container(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Image.asset(
        "assets/images/icons-$iconFileName.png",
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: Radii.k6pxRadius,
            side: Borders.primaryBorder,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0),
      ),
    ),
  );
}
