import 'package:flutter/material.dart';

AppBar transparentAppBar({
  required BuildContext context,
  Widget? title,
  Widget? leading,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: title != null
        ? Center(
            child: title,
          )
        : null,
    leading: leading,
    actions: actions,
    elevation: 0,
  );
}
