import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
// import 'package:xingshan/widget/input_widget.dart';
class XSPublishTaskPage extends StatefulWidget {
  XSPublishTaskPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSPublishTaskPageState createState() => _XSPublishTaskPageState();
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
          // child: XSInputWidget(
          //   hintText: hintText,
          //   obscureText: true,
          //   onChanged: (String value) {
          //   }
          // ),
          flex: 1,
        ),
      ],
    )
  );
}

class _XSPublishTaskPageState extends State<XSPublishTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('发任务',style: TextStyle(color: XSColors.white,),),
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
            child: SafeArea(
              ///同时弹出键盘不遮挡
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      child: Text(
                        '你将通过付钱的方式邀请大家来运动，共同支持公益项目',
                        style: TextStyle(fontSize: 14.0,color: XSColors.greyTextColor),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _renderItem('支持项目', '免费午餐'),
                          Padding(padding: EdgeInsets.all(7.5),),
                          _renderItem('支持金额：', '最少1元'),
                          Container(
                            padding: EdgeInsets.fromLTRB(10.0,12.0,10.0,12.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  new TextSpan(text: '中储粮公司为您配捐'),
                                  new TextSpan(
                                    text: '10.00',
                                    style: TextStyle(
                                      color: XSColors.orangeTextColor
                                    )
                                  ),
                                  new TextSpan(text: '元'),
                                ]
                              )
                            )
                          ),
                          _renderItem('筹集步数：', '建议10千~20千步'),
                          Padding(padding: EdgeInsets.all(7.5),),
                          _renderItem('想说的话：', '支持免费午餐，为您健康'),
                          Container(
                            padding: EdgeInsets.only(top: 50.0),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 44.0,
                              color: Theme.of(context).primaryColor,
                              child: Text('确定', style: TextStyle(color: XSColors.white),),
                              onPressed: () {
                                NavigatorUtils.goConfirmPayPage(context);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        )
      )
    );
  }
}
