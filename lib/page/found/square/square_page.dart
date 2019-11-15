import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class XSSquarePage extends StatefulWidget {
  XSSquarePage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSSquarePageState createState() => _XSSquarePageState();
}

class _XSSquarePageState extends State<XSSquarePage> {
  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  @override
  Widget build(BuildContext context) {
    // List _items = [

    // ];
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            '任务列表',
            style: TextStyle(
              color: XSColors.white,
            ),
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Image(
              image: AssetImage(XSICons.FOUND_TASKLIST_FILTRATE),
            ),
            onPressed: () {
              // NavigatorUtils.showXSDialog(context: context);
            },
          ),
          
        ],
      ),
      body: ListView(
        // children: _items
      )
    );
  }
}