import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSWalkPage extends StatefulWidget {
  XSWalkPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSWalkPageState createState() => _XSWalkPageState();
}

class _XSWalkPageState extends State<XSWalkPage> {

  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints.tightFor(height: 164.0),
          decoration: BoxDecoration(
            color: XSColors.primarySwatch
          ),
        ),
      ],
    );
  }
}
