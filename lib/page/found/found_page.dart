import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';
import 'package:xingshan/page/found/task/task_home_page.dart';
import 'package:xingshan/page/found/dynamic/dynamic_page.dart';
import 'package:xingshan/page/found/square/square_page.dart';
import 'package:xingshan/page/found/team/team_page.dart';

class XSFoundPage extends StatefulWidget {
  XSFoundPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSFoundPageState createState() => _XSFoundPageState();
}

class _XSFoundPageState extends State<XSFoundPage> {

   _renderItem(image, text, index, widget) {
    var borderWidth = index == 1 || index == 3 ? 9.0 : 3.0;

    return new Container(
      padding: EdgeInsets.fromLTRB(2.0, 10.0, 0, 10.0),
      constraints: BoxConstraints.tightFor(width: double.infinity),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: XSColors.primaryLineValue,
            width: borderWidth,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: FlatButton(
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 14.0),
                    child: new Image(
                      image: new AssetImage(image),
                      // color: XSColors.primarySwatch,
                    ),
                  ),
                  Text(
                    text,
                    textScaleFactor: 1.2,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Image(
                    image: new AssetImage(XSICons.MY_EXPAND),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
        onPressed: () {
          NavigatorUtils.NavigatorRouter(context, widget);
        },
      ),
    );
  }

  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  @override
  Widget build(BuildContext context) {
    
    List<Widget> _items = [
      _renderItem(XSICons.FOUND_TASK, '任务', 1, new XSTaskListPage()),
      _renderItem(XSICons.FOUND_DYNAMIC, '动态', 2, new XSDynamicPage()),
      _renderItem(XSICons.FOUND_TEAM, '团队', 3, new XSTeamPage()),
      _renderItem(XSICons.FOUND_SQUARE, '广场', 4, new XSSquarePage()),
    ];

    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            '发现',
            style: TextStyle(
              color: XSColors.white,
            ),
          ),
        )
      ),
      body: ListView(
        children: _items
      )
    );
  }
}
