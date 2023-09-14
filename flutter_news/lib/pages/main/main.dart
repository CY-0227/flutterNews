import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// 分类
  Widget _buildCategory() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              'Latest',
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              'World',
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              'Business',
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              'Latest',
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(8)),
            height: duSetHeight(52),
            alignment: Alignment.center,
            child: Text(
              'Sports',
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 推荐
  Widget _buildRecommend() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: duSetWidth(335),
            height: duSetHeight(290),
            child: Image.asset(
              "assets/images/feature-1.png",
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              borderRadius: Radii.k6pxRadius,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(10)),
            child: Text(
              '作者',
              style: TextStyle(
                fontFamily: kAvenir,
                fontSize: duSetFontSize(14),
                fontWeight: FontWeight.normal,
                color: AppColors.thirdElementText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(10)),
            child: Text(
              "The green-blue blooms of toxic algae have been found in Prospect Park",
              style: TextStyle(
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(24),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryText,
                height: 1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: duSetWidth(120),
                  ),
                  child: Text(
                    'Health',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.secondaryElementText,
                      height: 1,
                    ),
                  ),
                ),
                SizedBox(
                  width: duSetWidth(15),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: duSetWidth(120),
                  ),
                  child: Text(
                    "• 1m ago",
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.thirdElementText,
                      height: 1,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  size: 24,
                  color: AppColors.primaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 频道
  Widget _buildChannels() {
    return Container(
      height: duSetHeight(137),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            Container(
              width: duSetWidth(70),
              height: duSetHeight(97),
              margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: duSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(duSetWidth(32))),
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: duSetWidth(10),
                          top: duSetWidth(10),
                          right: duSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-cnn.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Fox News',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.thirdElementText,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 列表
  Widget _buildNewsList() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: duSetWidth(20),
          ),
          height: duSetWidth(161),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图片
              Container(
                child: Image.asset(
                  'assets/images/feature-2.png',
                  fit: BoxFit.fill,
                  width: duSetWidth(121),
                  height: duSetWidth(121),
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
                      'Moto News',
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
                        'MotoGP alters track limits boundary after controversy',
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
                            'Sports',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryElementText,
                            ),
                          ),
                          Text(
                            '• 9m ago',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.thirdElementText,
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
        ),
        Divider(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: duSetWidth(20),
          ),
          height: duSetWidth(161),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图片
              Container(
                child: Image.asset(
                  'assets/images/feature-2.png',
                  fit: BoxFit.fill,
                  width: duSetWidth(121),
                  height: duSetWidth(121),
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
                      'Moto News',
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
                        'MotoGP alters track limits boundary after controversy',
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
                            'Sports',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryElementText,
                            ),
                          ),
                          Text(
                            '• 9m ago',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.thirdElementText,
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
        ),
        Divider(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: duSetWidth(20),
          ),
          height: duSetWidth(161),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图片
              Container(
                child: Image.asset(
                  'assets/images/feature-2.png',
                  fit: BoxFit.fill,
                  width: duSetWidth(121),
                  height: duSetWidth(121),
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
                      'Moto News',
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
                        'MotoGP alters track limits boundary after controversy',
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
                            'Sports',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryElementText,
                            ),
                          ),
                          Text(
                            '• 9m ago',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.thirdElementText,
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
        ),
        Divider(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: duSetWidth(20),
          ),
          height: duSetWidth(161),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图片
              Container(
                child: Image.asset(
                  'assets/images/feature-2.png',
                  fit: BoxFit.fill,
                  width: duSetWidth(121),
                  height: duSetWidth(121),
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
                      'Moto News',
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
                        'MotoGP alters track limits boundary after controversy',
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
                            'Sports',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryElementText,
                            ),
                          ),
                          Text(
                            '• 9m ago',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.thirdElementText,
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
        ),
        Divider(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: duSetWidth(20),
          ),
          height: duSetWidth(161),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 图片
              Container(
                child: Image.asset(
                  'assets/images/feature-2.png',
                  fit: BoxFit.fill,
                  width: duSetWidth(121),
                  height: duSetWidth(121),
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
                      'Moto News',
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
                        'MotoGP alters track limits boundary after controversy',
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
                            'Sports',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryElementText,
                            ),
                          ),
                          Text(
                            '• 9m ago',
                            style: TextStyle(
                              fontFamily: kAvenir,
                              fontSize: duSetFontSize(14),
                              fontWeight: FontWeight.normal,
                              color: AppColors.thirdElementText,
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
        ),
        Divider(
          height: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCategory(),
            Divider(height: 1),
            _buildRecommend(),
            Divider(height: 1),
            _buildChannels(),
            Divider(height: 1),
            _buildNewsList(),
          ],
        ),
      ),
    );
  }
}
