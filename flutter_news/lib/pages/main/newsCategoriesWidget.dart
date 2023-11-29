import 'package:flutter/material.dart';
import 'package:flutter_news/common/entitys/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget newsCategoriesWidget(
    {required List<CategoryResponseEntity> categories,
    String? selCategoryCode,
    Function(CategoryResponseEntity)? onTap}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: categories.map<Widget>((item) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              item.title!,
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
          onTap: () {
            onTap!(item);
          },
        );
      }).toList(),
    ),
  );
}
