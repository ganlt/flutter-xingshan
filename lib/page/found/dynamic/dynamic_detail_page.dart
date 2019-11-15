import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class XSDynamicDetailPage extends StatefulWidget {
  XSDynamicDetailPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSDynamicDetailPageState createState() => _XSDynamicDetailPageState();
}

class _XSDynamicDetailPageState extends State<XSDynamicDetailPage> {
  // final EdgeInsets _padding = MediaQuery.of(context).padding;

  _renderItem(name, level, gender) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 20.0),
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
    );
  }
  _renderComment(name, gender, age, content, self) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(75.0, 15.0, 15.0, 15.0),
          child: Column(
            children: <Widget>[
               Row(
                children: <Widget>[
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    width: 36.0,
                    height: 16.0,
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: gender=='girl'?XSColors.pinkColor:gender=='boy'?XSColors.blueColor:XSColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      )
                    ),
                    child: Center(
                      child: Text(age, style: TextStyle(fontSize: 12.0, color: XSColors.white),),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5.0),),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: self?'回复：':'',
                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 14.0),
                  ),
                  TextSpan(
                    text: content,
                    style: TextStyle(color: XSColors.greyTextColor, fontSize: 14.0),
                  ),
                ])
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 15.0),
          child: ClipOval(
            child: Image.asset(XSICons.AVATAR, width: 50.0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                  _renderItem('秋天的童话', 'LV99', 'girl'),
                  Padding(padding: EdgeInsets.all(5.0),),
                  _renderComment('张三', 'boy', '22', '邀请你为我健康买单啦！走了10000步，希望negative为免费午餐筹款￥10，小小心愿~', false),
                  _renderComment('欧版天平座', 'boy', '22', '邀请你为我健康买单啦！走了10000步，希望negative为免费午餐筹款￥10，小小心愿~', true)
                ],
                ),
                
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image(
                      image: AssetImage(XSICons.COMMENT_BUTTON),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // TextField(
                          // ),
                          Padding(padding: EdgeInsets.all(5.0),),
                          FlatButton(
                            child: Text('评论',style: TextStyle(color: XSColors.white,),),
                            color: Theme.of(context).primaryColor,
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}