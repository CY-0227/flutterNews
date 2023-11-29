import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/entitys/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class NewsItemWidget extends StatefulWidget {
  final Items item;
  const NewsItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  _NewsItemWidgetState createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> {
  String getTime(String? addTime) {
    if (addTime == null) {
      DateTime dt = DateTime.now();
      return duTimeLineFormat(dt);
    }
    DateTime dt = DateTime.parse(addTime);
    return '• ' + duTimeLineFormat(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: duSetWidth(20),
      ),
      height: duSetWidth(161),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 图片
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detailPage');
            },
            child: Container(
              child: Image.asset(
                'assets/images/feature-2.png',
                fit: BoxFit.fill,
                width: duSetWidth(121),
                height: duSetWidth(121),
              ),
            ),
          ),
          // 右侧
          Container(
            margin: EdgeInsets.symmetric(vertical: duSetWidth(20)),
            width: duSetWidth(194),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.title ?? 'title',
                  style: TextStyle(
                    fontFamily: kAvenir,
                    fontSize: duSetFontSize(14),
                    fontWeight: FontWeight.normal,
                    color: AppColors.thirdElementText,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
                Container(
                  padding: EdgeInsets.only(top: duSetWidth(10)),
                  child: Text(
                    widget.item.thumbnail ?? '内容',
                    style: TextStyle(
                      fontFamily: kMontserrat,
                      fontSize: duSetFontSize(15),
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryText,
                      height: 1,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Spacer(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.category ?? 'category',
                        style: TextStyle(
                          fontFamily: kAvenir,
                          fontSize: duSetFontSize(14),
                          fontWeight: FontWeight.normal,
                          color: AppColors.secondaryElementText,
                        ),
                      ),
                      SizedBox(
                        width: duSetWidth(70),
                        child: AutoSizeText(
                          getTime(widget.item.addtime),
                          style: TextStyle(
                            fontFamily: kAvenir,
                            fontSize: duSetFontSize(14),
                            fontWeight: FontWeight.normal,
                            color: AppColors.thirdElementText,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: duSetWidth(24),
                        color: AppColors.primaryText,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
