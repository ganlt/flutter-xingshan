import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xingshan/page/found/task/task_filter_dialog.dart';
import 'package:xingshan/page/home/home_page.dart';
import 'package:xingshan/page/login/login_page.dart';
import 'package:xingshan/page/login/password_login_page.dart';
import 'package:xingshan/page/project/project_detail_page.dart';
import 'package:xingshan/page/project/pay_page.dart';
import 'package:xingshan/page/project/pay_success_page.dart';
import 'package:xingshan/page/project/confirm_pay_page.dart';
import 'package:xingshan/page/project/pay_success_share_page.dart';

import 'package:xingshan/page/found/task/task_detail_page.dart';
import 'package:xingshan/page/found/dynamic/dynamic_detail_page.dart';
import 'package:xingshan/page/found/task/publish_task_page.dart';

// 导航栏
class NavigatorUtils {
  ///替换
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  ///切换无参数页面
  static pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
  
  static goLogin(BuildContext context) {
    NavigatorRouter(context, new LoginPage());
  }

  static goPasswordLogin(BuildContext context) {
    NavigatorRouter(context, new PwLoginPage());
  }
  ///主页
  static goHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, XSHomePage.sName);
  }

  ///公共打开方式
  static NavigatorRouter(BuildContext context, Widget widget) {
    return Navigator.push(context,
        new CupertinoPageRoute(builder: (context) => pageContainer(widget)));
  }

  ///Page页面的容器，做一次通用自定义
  static Widget pageContainer(widget) {
    return MediaQuery(

        ///不受系统字体缩放影响
        data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .copyWith(textScaleFactor: 1),
        child: widget);
  }

  ///弹出 dialog
  static Future<T> showXSDialog<T>({
    @required BuildContext context,
    bool barrierDismissible = true,
    WidgetBuilder builder,
  }) {
    return showDialog<T>(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return MediaQuery(

              ///不受系统字体缩放影响
              data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .copyWith(textScaleFactor: 1),
              child: new SafeArea(child: builder(context)));
        });
  }
  // 项目详情页
  static goProjectDetailPage(
    BuildContext context,
  ) {
    NavigatorRouter(context,
     new XSProjectDetailPage());
  }
  // 我要出钱页
  static goPayPage(
    BuildContext context,
  ) {
    NavigatorRouter(context,
      new XSPayPage()
    );
  }
  static goPaySuccess(BuildContext context) {
    NavigatorRouter(context, new XSPaySuccessPage());
  }
  static goConfirmPayPage(BuildContext context) {
    NavigatorRouter(context, new XSConfirmPayPage());
  }
  static goPaySuccessShare(BuildContext context) {
    NavigatorRouter(context, new XSPaySuccessSharePage());
  }
  // 任务详情页
  static goTaskDetailPage(
    BuildContext context,
  ) {
    NavigatorRouter(context,
     new XSTaskDetailPage());
  }
  // 动态详情页
  static goDynamicDetailPage(
    BuildContext context,
  ) {
    NavigatorRouter(context,
     new XSDynamicDetailPage());
  }
  // 动态详情页
  static AlertTaskDialog(
    BuildContext context,
  ) {
    NavigatorRouter(context,
     new TaskFilterDialog());
  }
  // 任务发布页面
  static goPublishTaskPage(BuildContext context) {
    NavigatorRouter(context, new XSPublishTaskPage());
  }
}
