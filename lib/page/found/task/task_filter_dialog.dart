import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class TaskFilterDialog extends StatefulWidget {
  TaskFilterDialog({Key key}) : super(key: key);
  @override
  _TaskFilterDialogState createState() => _TaskFilterDialogState();
}

class _TaskFilterDialogState extends State<TaskFilterDialog> {

  _renderItem(title, btns) {
    Widget btn;
    if (btns.length == 1) {
      Widget oneBtn = FlatButton(
        onPressed: () {},
        child: Text(btns[0], style: TextStyle(color: XSColors.white),),
        color: Theme.of(context).primaryColor,
      );
      btn = oneBtn;
    } else if (btns.length == 2) {
      Widget twoBtns = Row(
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text(btns[0], style: TextStyle(color: Theme.of(context).primaryColor),),
            highlightColor: Theme.of(context).primaryColor,
          ),
          Padding(padding: EdgeInsets.all(10.0),),
          OutlineButton(
            onPressed: () {},
            child: Text(btns[1], style: TextStyle(color: Theme.of(context).primaryColor),),
          ),
        ],
      );
      btn = twoBtns;
    }
    Widget result = Container(
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: XSColors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none
            ),
          ),
          Padding(padding: EdgeInsets.all(7.5),),
          btn,
        ],
      ),
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 64.0, 20.0, 100),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: XSColors.white,
          ),
          child: Column(children: <Widget>[
            Container(
              child: Text(
                '筛选',
                style: TextStyle(
                  color: XSColors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              ),
              padding: EdgeInsets.only(top: 15.0),
            ),
            Container(
              padding: EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _renderItem('查看对象', ['只看好友']),
                  _renderItem('公益项目', ['免费午餐', '爱心衣橱']),
                  _renderItem('支持方式', ['需要出力', '需要出钱']),
                  Padding(padding: EdgeInsets.all(9),),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    height: 44.0,
                    color: Theme.of(context).primaryColor,
                    textColor: XSColors.white,
                    child: Text('确定'),
                  )
                ],
              ),
            ),
          ],),
        ),
        Container(
          margin: EdgeInsets.only(top: 534.0),
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Image(
              image: AssetImage(XSICons.CLOSE_BUTTON),
            ),
          ),
        ),
      ],
    );
  }
}