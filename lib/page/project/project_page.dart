import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSProjectPage extends StatefulWidget {
  XSProjectPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSProjectPageState createState() => _XSProjectPageState();
}

class _XSProjectPageState extends State<XSProjectPage> {

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
