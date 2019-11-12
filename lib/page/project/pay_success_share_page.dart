import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
class XSPaySuccessSharePage extends StatefulWidget {
  XSPaySuccessSharePage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSPaySuccessSharePageState createState() => _XSPaySuccessSharePageState();
}

_renderItem(title, hintText) {
  return Container(
    color: XSColors.primaryLineValue,
    padding: EdgeInsets.only(left: 10.0,right: 10.0),
    height: 40.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
          flex: 1,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(hintText, style: TextStyle(fontSize: 14.0,color: XSColors.primaryTabValue),),
            ],
          ),
          flex: 1,
        ),
      ],
    )
  );
}

class _XSPaySuccessSharePageState extends State<XSPaySuccessSharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('我要出钱',style: TextStyle(color: XSColors.white,),),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(XSICons.PROJECT_BACKGROUND),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: double.infinity,
            margin: EdgeInsets.only(bottom: 94.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0),),
              color: XSColors.white,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 47.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              new TextSpan(text: '20.00+'),
                              new TextSpan(
                                text: '20.00',
                                style: TextStyle(
                                  color: XSColors.redTextColor
                                )
                              ),
                            ]
                          ),
                          style: TextStyle(fontSize: 36.0),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10.0),),
                      Text(
                        '筹集200，000步',
                        style: TextStyle(fontSize: 14.0,color: XSColors.greyTextColor),
                      ),
                      Padding(padding: EdgeInsets.all(25.0),),
                      Text(
                        '为朋友的健康埋单，一起行善积德啦',
                        style: TextStyle(color: XSColors.greyTextColor),
                      ),
                      Text(
                        '邀请朋友们都来参与吧！',
                        style: TextStyle(color: XSColors.greyTextColor),
                      ),
                    ],
                  ),
                ),
                Divider(color: XSColors.dividerColor, height: 2.0,),
                Padding(padding: EdgeInsets.all(10.0),),
                Container(
                  height: 44.0,
                  padding: EdgeInsets.only(left: 54.0, right: 54.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.QQ_ICON),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.WECHAT_ICON),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.WEIBO_ICON),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 54.0, right: 54.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.QQ_ICON),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.WECHAT_ICON),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage(XSICons.WEIBO_ICON),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        )
      )
    );
  }
}
