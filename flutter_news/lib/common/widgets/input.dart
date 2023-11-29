import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget inputTextEdit({
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String hintText = '',
  bool isPassword = false,
  double marginTop = 15,
  bool autoFocus = false,
}) {
  return Container(
    height: duSetHeight(40),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      autofocus: autoFocus,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: 1,
      autocorrect: false,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
      ),
      style: TextStyle(
        fontFamily: kAvenir,
        fontSize: duSetFontSize(18),
        fontWeight: FontWeight.w400,
        color: AppColors.primaryText,
      ),
    ),
  );
}

Widget inputEmailTextEdit({
  required TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String hintText = '',
  bool isPassword = false,
  double marginTop = 15,
  bool autoFocus = false,
}) {
  return Container(
    height: duSetHeight(44),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(41, 0, 0, 0),
          offset: Offset(0, 1),
          blurRadius: 0,
        ),
      ],
    ),
    child: TextField(
      autofocus: autoFocus,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: 1,
      autocorrect: false,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
      ),
      style: TextStyle(
        fontFamily: kAvenir,
        fontSize: duSetFontSize(18),
        fontWeight: FontWeight.w400,
        color: AppColors.primaryText,
      ),
    ),
  );
}
