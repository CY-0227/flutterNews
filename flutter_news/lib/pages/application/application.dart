import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';
import 'package:flutter_news/pages/account/account.dart';
import 'package:flutter_news/pages/bookmarks/bookmarks.dart';
import 'package:flutter_news/pages/category/category.dart';
import 'package:flutter_news/pages/main/main.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage>
    with SingleTickerProviderStateMixin {
  int _page = 0;

  final List<String> _tabTitles = [
    'Welcome',
    'Category',
    'Bookmarks',
    'Account',
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// tab栏动画
  void _handleNavBarTap(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(microseconds: 500),
      curve: Curves.ease,
    );
  }

  /// pageView 切换
  void _handlePageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  /// appBar
  AppBar _buildAppBar(BuildContext context) {
    return transparentAppBar(
      context: context,
      title: Text(
        _tabTitles[_page],
        style: TextStyle(
          fontFamily: kMontserrat,
          fontSize: duSetFontSize(18),
          fontWeight: FontWeight.w600,
          color: AppColors.primaryText,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: AppColors.primaryText,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          color: AppColors.primaryText,
          onPressed: () {},
        ),
      ],
    );
  }

  /// 主页面
  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: _handlePageChanged,
      children: [
        MainPage(),
        CategoryPage(),
        BookmarksPage(),
        AccountPage(),
      ],
    );
  }

  /// 底部tabbar
  final List<BottomNavigationBarItem> _bottomTabs = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      label: "main",
      icon: Icon(
        Iconfont.home,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.home,
        color: AppColors.secondaryElementText,
      ),
    ),
    const BottomNavigationBarItem(
      label: 'Category',
      icon: Icon(
        Iconfont.grid,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.grid,
        color: AppColors.secondaryElementText,
      ),
    ),
    const BottomNavigationBarItem(
      label: 'Tag',
      icon: Icon(
        Iconfont.tag,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.tag,
        color: AppColors.secondaryElementText,
      ),
    ),
    const BottomNavigationBarItem(
      label: 'My',
      icon: Icon(
        Iconfont.me,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.me,
        color: AppColors.secondaryElementText,
      ),
    ),
  ];

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: _bottomTabs,
      currentIndex: _page,
      onTap: _handleNavBarTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryBackground,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
