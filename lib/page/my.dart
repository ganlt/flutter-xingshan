import 'package:flutter/material.dart';
class My extends StatefulWidget {
  My({Key key, this.title}): super(key: key);

  final String title;

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {

  // final EdgeInsets _padding = MediaQuery.of(context).padding;
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset('assets/images/avatar.jpg', width: 60.0);
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints.tightFor(height: 150.0),
          // padding: EdgeInsets.fromLTRB(0, _padding.top, 0, _padding.bottom),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300],
                width: 6.0,
                style: BorderStyle.solid,
              )
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: ClipOval(
                  child: avatar,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Text(
                      '小肥羊',
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'ID: 20001020'
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(32.0, 12.0, 0, 12.0),
          constraints: BoxConstraints.tightFor(width: double.infinity),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
                width: 3.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.edit,
                  size: 20.0,
                  // color: Colors.blue,
                ),
              ),
              Text(
                '编辑资料',
                textScaleFactor: 1.2,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(32.0, 12.0, 0, 12.0),
          constraints: BoxConstraints.tightFor(width: double.infinity),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.settings,
                  size: 20.0,
                ),
              ),
              Text(
                '设置',
                textScaleFactor: 1.2,
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: IconButton(
              //     icon: Icon(
              //       Icons.keyboard_arrow_right,
              //       color: Colors.blue[300],
              //       size: 28.0,
              //     ),
              //     onPressed: () {},
              //   )
              // ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(32.0, 12.0, 0, 12.0),
          constraints: BoxConstraints.tightFor(width: double.infinity),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.values,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.info_outline,
                  size: 20.0,
                ),
              ),
              Text(
                '当前版本',
                textScaleFactor: 1.2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
