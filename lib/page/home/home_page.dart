import 'dart:async';
import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
// import 'package:xingshan/common/localization/default_localizations.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/common_utils.dart';
// import 'package:xingshan/common/utils/navigator_utils.dart';
// import 'package:xingshan/page/dynamic/dynamic_page.dart';
import 'package:xingshan/page/my/my_page.dart';
// import 'package:xingshan/page/trend/trend_page.dart';
import 'package:xingshan/widget/tabbar_widget.dart';
// import 'package:xingshan/widget/titlebar_widget.dart';

class XSHomePage extends StatelessWidget {
  static final String sName = "home";

  /// 不退出
  Future<bool> _dialogExitApp(BuildContext context) async {
    ///如果是 android 回到桌面
    if (Platform.isAndroid) {
      AndroidIntent intent = AndroidIntent(
        action: 'android.intent.action.MAIN',
        category: "android.intent.category.HOME",
      );
      await intent.launch();
    }

    return Future.value(false);
  }

  _renderTab(icon, text) {
    return new Tab(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[new Icon(icon, size: 24.0,), new Text(text)],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(Icons.directions_walk, CommonUtils.getLocale(context).home_walk),
      _renderTab(Icons.message, CommonUtils.getLocale(context).home_message),
      _renderTab(Icons.book, CommonUtils.getLocale(context).home_project),
      _renderTab(Icons.find_replace, CommonUtils.getLocale(context).home_found),
      _renderTab(Icons.person, CommonUtils.getLocale(context).home_my),
    ];
    ///增加返回按键监听
    return WillPopScope(
      onWillPop: () {
        return _dialogExitApp(context);
      },
      child: new XSTabBarWidget(
        type: XSTabBarWidget.BOTTOM_TAB,
        tabItems: tabs,
        tabViews: [
          new XSMyPage(),
          new XSMyPage(),
          new XSMyPage(),
          new XSMyPage(),
          new XSMyPage(),
        ],
        backgroundColor: XSColors.primarySwatch,
        indicatorColor: XSColors.white,
        // title: XSTitleBar(
        //   XSLocalizations.of(context).currentLocalized.app_name,
        //   iconData: XSICons.MAIN_SEARCH,
        //   needRightLocalIcon: true,
        //   onPressed: () {
        //     // NavigatorUtils.goSearchPage(context);
        //   },
        // ),
      ),
    );
  }
}
