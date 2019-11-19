import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MyDynamicPage extends StatefulWidget {
  MyDynamicPage({Key key}) : super(key: key);

  @override
  _MyDynamicPage createState() => _MyDynamicPage();
}

class _MyDynamicPage extends State<MyDynamicPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的动态',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}