import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSFoundPage extends StatefulWidget {
  XSFoundPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSFoundPageState createState() => _XSFoundPageState();
}

class _XSFoundPageState extends State<XSFoundPage> {

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
