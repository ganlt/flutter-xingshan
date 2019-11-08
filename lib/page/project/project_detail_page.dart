import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
class XSProjectDetailPage extends StatefulWidget {
  XSProjectDetailPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSProjectDetailPageState createState() => _XSProjectDetailPageState();
}

Widget _jumpToDetail() {
  return new MaterialButton(
    child: new Image(
      image: new AssetImage(XSICons.MY_EXPAND),
    ),
    onPressed: (){
      // 点击进入
    },
  ); 
}

class _XSProjectDetailPageState extends State<XSProjectDetailPage> {
  _renderInvestor(image, name) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Image.asset(image, width: 50.0),
          ),
          Padding(padding: EdgeInsets.all(5.0),),
          Text(
            name,
            style: TextStyle(fontSize: 14, color: XSColors.greyTextColor),
          ),
        ],
      ),
    );
  }
  _renderSubTitle(subtitle, textColor) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        subtitle,
        style: TextStyle(color: textColor),
      ),
    );
  }
  _renderItem(image, title, current, other, target, des) {
    List<Widget> _investorList = [
      _renderInvestor('assets/images/yyqx.jpg', '行小善'),
      _renderInvestor('assets/images/yyqx.jpg', '行小善'),
      _renderInvestor('assets/images/yyqx.jpg', '行小善'),
      _renderInvestor('assets/images/yyqx.jpg', '行小善'),
      _renderInvestor('assets/images/yyqx.jpg', '行小善'),
    ];
    Widget _progress = Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: SizedBox(
            height: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: LinearProgressIndicator(
                backgroundColor: XSColors.primaryLineValue,
                valueColor: AlwaysStoppedAnimation(XSColors.primaryValue),
                value: .3, 
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Column(
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              current,
                              style: TextStyle(
                                fontSize: 16,
                                color: XSColors.primarySwatch
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text(
                                '捐步筹款',
                                style: TextStyle(
                                  color: XSColors.primaryTabValue,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            other,
                            style: TextStyle(
                              fontSize: 16,
                              color: XSColors.primarySwatch
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '其他筹款',
                              style: TextStyle(
                                color: XSColors.primaryTabValue,
                                  fontSize: 12,
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              target,
                              style: TextStyle(
                                fontSize: 16,
                                color: XSColors.primarySwatch
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Center(
                              child: Text(
                                '目标筹款',
                                style: TextStyle(
                                  color: XSColors.primaryTabValue,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],)
    ,);
    
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10.0, 0, 7.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image(
                image: new AssetImage(image),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '[${title}]',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    des,
                    style: TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
            _renderDivider(7.0),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Image(
                    image: new AssetImage(XSICons.TAB_PROJECT),
                    width: 53,
                    height: 53,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          '中储粮为本项目配捐',
                          style: TextStyle(fontSize: 14,),
                        ),
                        new Text(
                          '100,000.00',
                          style: TextStyle(fontSize: 22,color: XSColors.moneyMainColor,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _renderDivider(7.0),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    '出资人',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.all(7.5),),
                  _renderDivider(7.0),
                  Padding(padding: EdgeInsets.all(7.5),),
                  Flex(
                    direction: Axis.horizontal,
                    children: _investorList,
                  ),
                ],
              ),
            ),
            _renderDivider(10.0),
            _renderSubTitle('项目介绍', Colors.black),
            _renderDivider(4.0),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Text(
                    '让孩子们吃饱饭就是快乐，',
                    style: TextStyle(color: XSColors.greyTextColor),
                  ),
                  Text(
                    '免费午餐不仅仅是顿午餐，',
                    style: TextStyle(color: XSColors.greyTextColor),
                  ),
                  Text(
                    '为孩子们送上一顿热腾腾的午餐吧！',
                    style: TextStyle(color: XSColors.greyTextColor),
                  ),
                ],
              ),
            ),
            _renderSubTitle('阅读全文', XSColors.orangeTextColor),
            _renderDivider(10.0),
            _renderSubTitle('项目进度', Colors.black),
            _renderDivider(4.0),
            _progress,
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '筹款日期截止到2020年6月，筹款完成后，捐步可以继续',
                    style: TextStyle(fontSize: 12.0,color: XSColors.greyTextColor),
                  ),
                  Text(
                    '目标将在2022年10月执行',
                    style: TextStyle(fontSize: 12.0,color: XSColors.greyTextColor),
                  ),
                ],
              ),
            ),
            _renderSubTitle('最新反馈', XSColors.orangeTextColor),
            _renderDivider(10.0),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('评论', style: TextStyle(fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 43.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: XSColors.orangeTextColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            )
                          ),
                          child: Center(
                            child: Text('20条',style: TextStyle(fontSize: 12.0, color: XSColors.white),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            _renderDivider(4.0),

          ],
        ),
    );
  }
  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  _renderDivider(height) {
    return Container(
      width: double.infinity,
      height: height,
      color: XSColors.primaryLineValue,
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget _item =  _renderItem(
      'assets/images/project.png',
      '免费午餐',
      '4500元',
      '6500元',
      '100万元',
      '为山区孩子筹集午餐，大家一起来支持吧！'
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('项目详情',style: TextStyle(color: XSColors.white,),),
      ),
      body: 
      Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: _item,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: XSColors.primaryBorderValue,
                    width: 0.5,
                    style: BorderStyle.solid,
                  ),
                )
              ),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage(XSICons.PROJECT_HEART_GREY),),
                  Container(padding: EdgeInsets.only(left: 15.0),height: 20.0,
                    decoration: BoxDecoration(border: Border(right: BorderSide(
                      color: XSColors.dividerColor,
                      width: 0.5,
                      style: BorderStyle.solid,
                    ))),
                  ),
                  Padding(padding: EdgeInsets.all(7.5),),
                  Image(image: AssetImage(XSICons.PROJECT_COMMENT),),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('我要出钱',style: TextStyle(color: XSColors.white,),),
                          color: XSColors.orangeTextColor,
                          padding: EdgeInsets.fromLTRB(15.0, 14.0, 15.0, 14.0),
                          onPressed: (){},
                        ),
                        Padding(padding: EdgeInsets.all(10.0),),
                        FlatButton(
                          child: Text('我要捐步',style: TextStyle(color: XSColors.white,),),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.fromLTRB(15.0, 14.0, 15.0, 14.0),
                          onPressed: (){},
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
