import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MyTaskPage extends StatefulWidget {
  MyTaskPage({Key key}) : super(key: key);

  @override
  _MyTaskPage createState() => _MyTaskPage();
}

class _MyTaskPage extends State<MyTaskPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的任务',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}