import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MyIMO extends StatefulWidget {
  MyIMO({Key key}) : super(key: key);

  @override
  _MyIMO createState() => _MyIMO();
}

class _MyIMO extends State<MyIMO> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的IMO+',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}