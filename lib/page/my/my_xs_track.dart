import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';

class XSTrackPage extends StatefulWidget {
  XSTrackPage({Key key}) : super(key: key);

  @override
  _XSTrackPage createState() => _XSTrackPage();
}

class _XSTrackPage extends State<XSTrackPage> {

  _renderItem() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
      height: 50,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            child: Text(''),
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: XSColors.greyTextColor)
                    )
                  ),
                  child: Text(
                    '2017/05',
                    style: TextStyle(color: XSColors.greyTextColor, fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: XSColors.greyTextColor)
                    )
                  ),
                  child: Text(
                    '1000',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    '2017/05',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
          Positioned(
            right: 0,
            child: Image(
              image: AssetImage(XSICons.AVATAR),
              width: 17,
              height: 17,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '行善轨迹',
          style: TextStyle(color: XSColors.white,),
        ),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 52),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text('筹款：¥2666.00',
                      style: TextStyle(color: Theme.of(context).primaryColor),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('捐赠：¥6.00',
                      style: TextStyle(color: XSColors.orangeTextColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(padding: EdgeInsets.all(5.0), color: XSColors.primaryLineValue,),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.all(18),
              child: ListView(
                children: <Widget>[
                  _renderItem(),
                  _renderItem(),
                  _renderItem(),
                  _renderItem(),
                  _renderItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}