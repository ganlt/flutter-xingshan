import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
class XSPaySuccessPage extends StatefulWidget {
  XSPaySuccessPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSPaySuccessPageState createState() => _XSPaySuccessPageState();
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

class _XSPaySuccessPageState extends State<XSPaySuccessPage> {
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
                      Text(
                        '你将通过付钱的方式邀请大家来运动，共同支持',
                        style: TextStyle(fontSize: 14.0,color: XSColors.greyTextColor),
                      ),
                      Text(
                        '免费午餐',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Divider(color: XSColors.dividerColor, height: 2.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(38.0,12.0,38.0,12.0),
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              new TextSpan(text: '支付成功任务完成后将为免费午餐筹集'),
                              new TextSpan(
                                text: '24',
                                style: TextStyle(
                                  color: XSColors.orangeTextColor
                                )
                              ),
                              new TextSpan(text: '元'),
                            ]
                          ),
                          style: TextStyle(fontSize: 20.0),
                        )
                      ),
                      Padding(padding: EdgeInsets.all(7.5),),
                      Text('赶快发布任务让小伙伴们来完成吧', style: TextStyle(color: XSColors.greyTextColor),),
                      Padding(padding: EdgeInsets.all(17.5),),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 44.0,
                        color: Theme.of(context).primaryColor,
                        child: Text('发布任务', style: TextStyle(color: XSColors.white),),
                        onPressed: () {
                          NavigatorUtils.goPaySuccessShare(context);
                        },
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
