import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MyBox extends StatefulWidget {
  MyBox({Key key}) : super(key: key);

  @override
  _MyBox createState() => _MyBox();
}

class _MyBox extends State<MyBox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的宝箱',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}