import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class XSTaskListPage extends StatefulWidget {
  XSTaskListPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSTaskListPageState createState() => _XSTaskListPageState();
}

class _XSTaskListPageState extends State<XSTaskListPage> {
  // final EdgeInsets _padding = MediaQuery.of(context).padding;

  _renderItem(name, projectName, text1, text2) {
    return FlatButton(
      onPressed: (){
        NavigatorUtils.goTaskDetailPage(context);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 20.0),
        margin: EdgeInsets.only(top: 10.0),
        color: XSColors.white,
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Image.asset(XSICons.AVATAR, width: 50.0),
            ),
            Padding(padding: EdgeInsets.only(left: 12.0),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: projectName, style: TextStyle(fontWeight: FontWeight.bold)),
                    ]
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: text1, style: TextStyle(color: XSColors.greyTextColor)),
                      TextSpan(text: text2, style: TextStyle(color: XSColors.orangeTextColor)),
                    ]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
     
  }
  _renderInsertItem (text) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 20.0),
      color: XSColors.white,
      child: Text(
        text,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _items = [
      _renderItem('老公', '【一万步支持免费午餐】', '筹10.00元，还差', '¥1.00'),
      _renderItem('老婆', '【支持免费午餐】', '筹10.00元，还差', '¥1.00'),
      Divider(height: 1.0, color: XSColors.primaryLineValue,),
      _renderInsertItem('福利：一张老照片'),
      _renderItem('推特公司', '【支持免费午餐】', '筹10.00元，还差', '¥1.00'),
    ];
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            '任务列表',
            style: TextStyle(
              color: XSColors.white,
            ),
          ),
        ),
        actions: <Widget>[
          Image(
            image: AssetImage(XSICons.FOUND_TASKLIST_FILTRATE),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: XSColors.primaryLineValue,
        ),
        child: ListView(
          children: _items,
        ),
      ),
    );
  }
}