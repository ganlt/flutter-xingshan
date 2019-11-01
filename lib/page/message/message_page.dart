import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSMessagePage extends StatefulWidget {
  XSMessagePage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSMessagePageState createState() => _XSMessagePageState();
}

class _XSMessagePageState extends State<XSMessagePage> {

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
