import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class MyRankingPage extends StatefulWidget {
  MyRankingPage({Key key}) : super(key: key);

  @override
  _MyRankingPage createState() => _MyRankingPage();
}

class _MyRankingPage extends State<MyRankingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的排名',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: ListView()
    );
  }
}