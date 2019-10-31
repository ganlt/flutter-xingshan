import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dio/dio.dart';

class XSHomepage extends StatefulWidget {
  XSHomepage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _XSHomepageState createState() {
    return new _XSHomepageState();
  }
}

class _XSHomepageState extends State<XSHomepage> {
  String _name;
  String _password;
  String _imagesCode;
  TextEditingController unameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();
  TextEditingController imagesController = new TextEditingController();
  GlobalKey formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120.0,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30.0),
              color: Colors.white,
              child: Icon(Icons.access_alarm),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: new Container(
                child: buildForm(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildForm() {
    return Form(
      //设置globalKey，用于后面获取FormState
      key: formKey,
      //开启自动校验
      autovalidate: true,
      child: Column(
        children: <Widget>[
          TextFormField(
              autofocus: false,
              //keyboardType: TextInputType.number,
              //键盘回车键的样式
              // textInputAction: TextInputAction.next,
              controller: unameController,
              decoration: InputDecoration(
                  labelText: "用户名或邮箱",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person)),
              // 校验用户名
              onSaved: (v) {
                _name = v;
              },
              validator: (v) {
                return v.trim().length > 0 ? null : "用户名不能为空";
              }),
          TextFormField(
              autofocus: false,
              controller: pwdController,
              decoration: InputDecoration(
                  labelText: "密码", hintText: "您的登录密码", icon: Icon(Icons.lock)),
              obscureText: true,
              onSaved: (v) {
                _password = v;
              },
              //校验密码
              validator: (v) {
                return v.trim().length > 5 ? null : "密码不能少于6位";
              }),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: TextFormField(
                    autofocus: false,
                    controller: imagesController,
                    decoration: InputDecoration(
                        labelText: "验证码",
                        hintText: "验证码",
                        icon: Icon(Icons.alternate_email)),
                    //obscureText: true,
                    onSaved: (v) {
                      _imagesCode = v;
                    },
                    //校验密码
                    validator: (v) {
                      return v.trim().length == 6 ? null : "验证码为6位";
                    }),
              ),
            ],
          ),

          // 登录按钮
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    child: Text("登录"),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

String successData = "";

class returnData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return returnDataState();
  }
}

class returnDataState extends State<returnData> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AlertDialog dialog = new AlertDialog(
      content: new Text(
        successData,
        style: new TextStyle(fontSize: 30.0, color: Colors.red),
      ),
    );
    return dialog;
  }
}
