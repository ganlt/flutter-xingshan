import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSTeamPage extends StatefulWidget {
  XSTeamPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSTeamPageState createState() => _XSTeamPageState();
}

class _XSTeamPageState extends State<XSTeamPage> {
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
          Image(
            image: AssetImage(XSICons.FOUND_TASKLIST_FILTRATE),
          )
        ],
      ),
      body: ListView(
        // children: _items
      )
    );
  }
}