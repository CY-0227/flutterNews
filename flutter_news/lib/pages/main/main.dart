import 'package:flutter/material.dart';
import 'package:flutter_news/common/apis/apis.dart';
import 'package:flutter_news/common/entitys/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';
import 'package:flutter_news/global.dart';
import 'package:flutter_news/pages/main/newsCategoriesWidget.dart';
import 'package:flutter_news/pages/main/newsItemWidget.dart';
import 'package:flutter_news/pages/main/newsLetterWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 分类
  List<CategoryResponseEntity> _categories = [];
  String _selCategoryCode = '';
  // 推荐
  Items? _newsRecommend;
  // 列表
  NewsPageListResponseEntity? _newsPageList;
  // 频道
  List<ChannelResponseEntity>? _channels;

  List<GlobalKey> _keys = [];

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller.addListener(() {
      print(_controller.offset);
    });

    _loadAllData();
  }

  _loadAllData() async {
    _categories = await NewsAPI.categories(context: context);

    _newsRecommend = await NewsAPI.newsRecommend(context: context);
    _newsRecommend ??= Items();

    _newsPageList = await NewsAPI.newsPageList(context: context);

    if (_newsPageList != null && _newsPageList!.items != null) {
      _keys = List.generate(_newsPageList!.items!.length, (index) {
        return GlobalKey();
      });
      print(_keys);
    }

    _channels = await NewsAPI.channels(context: context);

    _selCategoryCode = _categories.first.code!;
    if (mounted) {
      setState(() {});
    }
  }

  _loadNewsData(String categoryCode) async {
    _selCategoryCode = categoryCode;
    _newsRecommend = await NewsAPI.newsRecommend(
        context: context,
        params: NewsRecommendRequestEntity(categoryCode: categoryCode));
    _newsPageList = await NewsAPI.newsPageList(
        context: context,
        params: NewsPageListRequestEntity(categoryCode: categoryCode));
    if (mounted) {
      setState(() {});
    }
  }

  /// 分类
  Widget _buildCategory() {
    return _categories.isEmpty
        ? Container()
        : newsCategoriesWidget(
            categories: _categories,
            selCategoryCode: _selCategoryCode,
            onTap: (CategoryResponseEntity item) {},
          );
  }

  /// 推荐
  Widget _buildRecommend() {
    return _newsRecommend == null
        ? Container()
        : Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageCached(
                  url:
                      'https://img1.baidu.com/it/u=1546227440,2897989905&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
                  width: 335,
                  height: 290,
                ),
                Container(
                  margin: EdgeInsets.only(top: duSetHeight(10)),
                  // print(nullableInt?.toDouble() ?? '为空了');
                  child: Text(
                    _newsRecommend?.author ?? 'author',
                    // _newsRecommend!.author != null
                    //     ? _newsRecommend!.author!
                    //     : 'author',
                    // 'author',
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
                    _newsRecommend!.title != null
                        ? _newsRecommend!.title!
                        : 'title',
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
                          _newsRecommend?.category ?? 'category',
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
    return _channels == null
        ? Container()
        : Container(
            height: duSetHeight(137),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _channels!.map((item) {
                  return Container(
                    width: duSetWidth(70),
                    height: duSetHeight(97),
                    margin: EdgeInsets.symmetric(horizontal: duSetWidth(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: duSetWidth(64),
                          margin:
                              EdgeInsets.symmetric(horizontal: duSetWidth(3)),
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
                          item.title ?? '',
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
                  );
                }).toList(),
              ),
            ),
          );
  }

  /// 列表
  // Widget _buildNewsList() {
  //   return _newsPageList?.items == null
  //       ? Container()
  //       : Column(
  //           children: _newsPageList!.items!.map((item) {
  //             return Column(
  //               children: [
  //                 NewsItemWidget(
  //                   item: item,
  //                 ),
  //                 Divider(
  //                   height: 1,
  //                 ),
  //               ],
  //             );
  //           }).toList(),
  //         );
  // }

  Widget _buildNewsList() {
    return _newsPageList?.items == null
        ? Container()
        : ListView.separated(
            itemBuilder: (context, index) {
              return NewsItemWidget(
                item: _newsPageList!.items![index],
                key: _keys[index],
              );
            },
            itemCount: _newsPageList!.items!.length,
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            _buildCategory(),
            const Divider(height: 1),
            _buildRecommend(),
            const Divider(height: 1),
            _buildChannels(),
            const Divider(height: 1),
            _buildNewsList(),
            NewsLetterWidget(
              callback: () {
                //   _controller.animateTo(0,
                //       duration: Duration(seconds: 3), curve: Curves.easeInOut);
                // },
                Scrollable.ensureVisible(
                    _keys[4].currentContext as BuildContext,
                    duration: const Duration(seconds: 3));
              },
            ),
          ],
        ),
      ),
    );
  }
}
