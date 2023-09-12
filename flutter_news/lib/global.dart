import 'package:flutter/material.dart';
import 'package:flutter_news/common/entitys/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';

class Global {
  /// 用户配置
  static UserLoginResponseEntity profile =
      UserLoginResponseEntity(accessToken: '', channels: [Channel.FOX]);

  /// 初始化
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// 工具初始化
    await StorageUtil.init();
  }
}
