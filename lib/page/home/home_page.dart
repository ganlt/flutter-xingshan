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
import 'package:xingshan/page/message/message_page.dart';
import 'package:xingshan/page/project/project_page.dart';
import 'package:xingshan/page/walk/walk_page.dart';
import 'package:xingshan/page/found/found_page.dart';
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

  _renderTab(image, text) {
    return new Tab(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // new Icon(icon, size: 24.0,),
          new Image(
            image: new AssetImage(image),
            color: XSColors.primaryTabValue,
          ),
          new Text(text)],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(XSICons.TAB_WALK, CommonUtils.getLocale(context).home_walk),
      _renderTab(XSICons.TAB_MESSAGE, CommonUtils.getLocale(context).home_message),
      _renderTab(XSICons.TAB_PROJECT, CommonUtils.getLocale(context).home_project),
      _renderTab(XSICons.TAB_FOUND, CommonUtils.getLocale(context).home_found),
      _renderTab(XSICons.TAB_MY, CommonUtils.getLocale(context).home_my),
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
          new XSWalkPage(),
          new XSMessagePage(),
          new XSProjectPage(),
          new XSFoundPage(),
          new XSMyPage(),
        ],
        backgroundColor: XSColors.primarySwatch,
        indicatorColor: XSColors.white,
      ),
    );
  }
}
