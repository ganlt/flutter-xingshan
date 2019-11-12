import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:xingshan/common/config/config.dart';
import 'package:xingshan/common/local/local_storage.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';
import 'package:xingshan/redux/state.dart';
// import 'package:xingshan/redux/login_redux.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/common_utils.dart';
import 'package:xingshan/widget/flex_button.dart';
import 'package:xingshan/widget/titlebar_widget.dart';
import 'package:xingshan/widget/input_widget.dart';
import 'package:xingshan/widget/input_phone_widget.dart';
import 'package:xingshan/common/localization/default_localizations.dart';

//登录页
class LoginPage extends StatefulWidget {
  static final String sName = "login";

  @override
  State createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var _userName = "";

  var _password = "";

  final TextEditingController userController = new TextEditingController();
  final TextEditingController pwController = new TextEditingController();

  _LoginPageState() : super();

  @override
  void initState() {
    super.initState();
    initParams();
  }

  initParams() async {
    _userName = await LocalStorage.get(Config.USER_NAME_KEY);
    _password = await LocalStorage.get(Config.PW_KEY);
    userController.value = new TextEditingValue(text: _userName ?? "");
    pwController.value = new TextEditingValue(text: _password ?? "");
  }

  @override
  Widget build(BuildContext context) {
    ///共享 store
    return new StoreBuilder<XSState>(builder: (context, store) {
      /// 触摸收起键盘
      return new GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              XSLocalizations.of(context).currentLocalized.login_text,
              style: TextStyle(color: XSColors.white,fontSize: 19,),
            ),
            actions: <Widget>[
              new MaterialButton(
                child: Text(
                  CommonUtils.getLocale(context).password_login_text,
                  style: TextStyle(color: XSColors.white,fontSize: 16,),
                ),
                onPressed: (){
                  NavigatorUtils.goPasswordLogin(context);
                },
              )
            ],
          ),
          body: new Container(
            color: XSColors.white,
              ///防止overFlow的现象
              child: SafeArea(
                ///同时弹出键盘不遮挡
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      new Padding(padding: new EdgeInsets.all(5.0)),
                      new XSInputPhoneWidget(
                        hintText: CommonUtils.getLocale(context)
                            .login_username_hint_text,
                        onChanged: (String value) {
                          _userName = value;
                        },
                        controller: userController,
                      ),
                      new Padding(padding: new EdgeInsets.all(0.5)),
                      new XSInputWidget(
                        hintText: CommonUtils.getLocale(context)
                            .login_password_hint_text,
                        obscureText: true,
                        onChanged: (String value) {
                          _password = value;
                        },
                        controller: pwController,
                      ),
                      new Padding(padding: new EdgeInsets.all(3.5)),
                      new Padding (
                        padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                        child: Column(
                          children: <Widget>[
                            new Text(
                              CommonUtils.getLocale(context).login_hint_message_text,
                              style: TextStyle(color: XSColors.subLightTextColor,fontSize: 12,),
                            ),
                            new Text(
                              CommonUtils.getLocale(context).user_service_agreement,
                              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12,),
                            )
                          ],
                        ),
                      ),
                      new Padding(padding: new EdgeInsets.all(40)),
                      new Padding(
                        padding: EdgeInsets.only(left: 40.0, right: 40.0),
                        child: MaterialButton(
                          color: Theme.of(context).primaryColor,
                          minWidth: double.infinity,
                          height: 44.0,
                          child: Text(
                            CommonUtils.getLocale(context).login_text,
                            style: TextStyle(color: XSColors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      new Padding(padding: new EdgeInsets.all(70)),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            '——',
                            style: TextStyle(color: XSColors.dividerColor,fontSize: 12.0),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(left: 20.0,right: 20.0),
                            child: new Text(
                              CommonUtils.getLocale(context).third_login_text,
                              style: TextStyle(color: XSColors.dividerColor,fontSize: 12.0),
                            ),
                          ),
                          new Text(
                            '——',
                            style: TextStyle(color: XSColors.dividerColor,fontSize: 12.0),
                          ),
                        ],
                      ),
                      new Padding(padding: new EdgeInsets.all(20)),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image(
                            image: new AssetImage(XSICons.WECHAT_ICON),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(left: 40.0,right: 40.0),
                            child: new Image(
                              image: new AssetImage(XSICons.QQ_ICON),
                            ),
                          ),
                          new Image(
                            image: new AssetImage(XSICons.WEIBO_ICON),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ),
      );
    });
  }
}
