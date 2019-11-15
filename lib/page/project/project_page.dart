import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/common/utils/navigator_utils.dart';
class XSProjectPage extends StatefulWidget {
  XSProjectPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSProjectPageState createState() => _XSProjectPageState();
}

class _XSProjectPageState extends State<XSProjectPage> {

  _renderItem(image, title, current, other, target, des) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image(
                image: new AssetImage(image),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '[${title}]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    des,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
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
          ],
        ),
      ),
      onPressed: () {
        NavigatorUtils.goProjectDetailPage(context);
      },
    );
  }
  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  @override
  Widget build(BuildContext context) {
    List<Widget> _items = [
      _renderItem(
        'assets/images/project.png',
        '免费午餐',
        '4500元',
        '6500元',
        '100万元',
        '为山区孩子筹集午餐，大家一起来支持吧！'
      ),
      _renderItem(
        'assets/images/project_02.png',
        '免费午餐',
        '6.98万',
        '13.02万',
        '20万元',
        '为山区孩子筹集午餐，大家一起来支持吧！'
      ),
      _renderItem(
        'assets/images/project.png',
        '免费午餐',
        '4500元',
        '6500元',
        '100万元',
        '为山区孩子筹集午餐，大家一起来支持吧！'
      ),
      _renderItem(
        'assets/images/project.png',
        '免费午餐',
        '4500元',
        '6500元',
        '100万元',
        '为山区孩子筹集午餐，大家一起来支持吧！'
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            '待支付的项目',
            style: TextStyle(
              color: XSColors.white,
            ),
          )
        ),
      ),
      body: Container(
        // color: Theme.of(context).primaryColor,
        child: ListView(
          children: _items,
        ),
      ),
    );
  }
}
