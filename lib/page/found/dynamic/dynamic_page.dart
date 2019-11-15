import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class XSDynamicPage extends StatefulWidget {
  XSDynamicPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSDynamicPageState createState() => _XSDynamicPageState();
}

class _XSDynamicPageState extends State<XSDynamicPage> {
  // final EdgeInsets _padding = MediaQuery.of(context).padding;
   _renderItem(name, level, gender) {
    return FlatButton(
      onPressed: (){
        NavigatorUtils.goDynamicDetailPage(context);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 20.0),
        margin: EdgeInsets.only(top: 10.0),
        color: XSColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipOval(
                  child: Image.asset(XSICons.AVATAR, width: 50.0),
                ),
                Padding(padding: EdgeInsets.only(left: 12.0),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 2, 10, 2),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: XSColors.orangeTextColor,
                              width: 1
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0)
                            )
                          ),
                          child: Text(level,
                            style: TextStyle(color: XSColors.orangeTextColor,fontSize: 11.0),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 36.0,
                      height: 16.0,
                      margin: EdgeInsets.only(top: 8.0),
                      decoration: BoxDecoration(
                        color: gender=='girl'?XSColors.pinkColor:gender=='boy'?XSColors.blueColor:XSColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                        )
                      ),
                      child: Center(
                        child: Text('22',style: TextStyle(fontSize: 12.0, color: XSColors.white),),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                '如果你无法简洁的表达你的想法，那只说明你还不够了解它。——阿尔伯特·爱因斯坦',
                style: TextStyle(color: XSColors.greyTextColor),
              ),
            ),
            Image(
              image: AssetImage('assets/images/yyyy.jpg'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.thumb_up, color: XSColors.greyTextColor,),
                  Container(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('30', style: TextStyle(color: XSColors.greyTextColor),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 50.0),),
                  Icon(Icons.message, color: XSColors.greyTextColor,),
                  Container(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('6', style: TextStyle(color: XSColors.greyTextColor),),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
     
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _items = [
      _renderItem('秋天的童话', 'LV99', 'girl'),
      _renderItem('欧版天平座', 'LV30', 'boy'),
    ];
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            '好友动态',
            style: TextStyle(
              color: XSColors.white,
            ),
          ),
        ),
        actions: <Widget>[
          Image(
            image: AssetImage(XSICons.SHARE_BUTTON),
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