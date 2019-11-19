import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MySettingPage extends StatefulWidget {
  MySettingPage({Key key}) : super(key: key);

  @override
  _MySettingPage createState() => _MySettingPage();
}

class _MySettingPage extends State<MySettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '更多设置',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}