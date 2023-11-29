import 'package:flutter/material.dart';
import 'package:flutter_news/common/entitys/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class NewsAPI {
  /// 新闻翻页列表
  static Future<NewsPageListResponseEntity> newsPageList(
      {NewsPageListRequestEntity? params,
      required BuildContext context}) async {
    var response = await HttpUtil()
        .get(path: NEWS_PAGE_LIST_URL, params: params, context: context);
    print(response);
    return NewsPageListResponseEntity.fromJson(response);
  }

  /// 推荐
  static Future<Items> newsRecommend(
      {required BuildContext context,
      NewsRecommendRequestEntity? params}) async {
    var response = await HttpUtil()
        .get(path: NEWS_RECOMMEND_URL, params: params, context: context);
    // print(response);
    return Items.fromJson(response);
  }

  /// 分类
  static Future<List<CategoryResponseEntity>> categories(
      {required BuildContext context}) async {
    List response =
        await HttpUtil().get(path: NEWS_CATEGORIES_URL, context: context);
    // print(response);
    return response
        .map<CategoryResponseEntity>(
            (item) => CategoryResponseEntity.fromJson(item))
        .toList();
  }

  /// 频道
  static Future<List<ChannelResponseEntity>> channels(
      {required BuildContext context}) async {
    List response =
        await HttpUtil().get(path: NEWS_CHANNELS_URL, context: context);
    return response
        .map<ChannelResponseEntity>(
            (item) => ChannelResponseEntity.fromJson(item))
        .toList();
  }

  /// 标签列表
  static Future<List<TagResponseEntity>> tags(
      {required BuildContext context, required TagRequestEntity params}) async {
    List response = await HttpUtil()
        .get(path: NEWS_TAGS_URL, context: context, params: params);
    return response
        .map<TagResponseEntity>((item) => TagResponseEntity.fromJson(item))
        .toList();
  }
}
