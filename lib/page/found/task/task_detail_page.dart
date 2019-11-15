import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';

class XSTaskDetailPage extends StatefulWidget {
  XSTaskDetailPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _XSTaskDetailPageState createState() => _XSTaskDetailPageState();
}

class _XSTaskDetailPageState extends State<XSTaskDetailPage> {
  // final EdgeInsets _padding = MediaQuery.of(context).padding;

  _renderItem(name, projectName, text,) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 20.0),
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
                    TextSpan(text: '  '),
                    TextSpan(text: projectName, style: TextStyle(color: Theme.of(context).primaryColor)),
                  ]
                ),
              ),
              Text(
                text,
                style: TextStyle(color: XSColors.greyTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
  _renderInsertItem (text) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      width: double.infinity,
      color: XSColors.white,
      child: Text(
        text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            '捐钱任务详情',
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
          color: XSColors.primaryLineValue
        ),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      child: Text(
                        '支持免费午餐，为孩子们筹集午餐',
                        style: TextStyle(color: XSColors.greyTextColor),
                      ),
                    ),
                    _renderItem('媳妇儿', '[捐出10000步]', '为你健康买单，一起行善积德啦'),
                    _renderInsertItem('福利：可以看到一张私密照'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                            'assets/images/yyyy.jpg'
                          ),
                          width: double.infinity,
                          height: 194,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '目标：￥10.00   ', style: TextStyle(color: XSColors.greyTextColor),),
                                TextSpan(text: '已筹：￥2.50', style: TextStyle(color: XSColors.greyTextColor),),
                              ]
                            )
                          )
                        ),
                      ],
                    ),
                    Divider(height: 10, color: XSColors.primaryLineValue,),
                    _renderItem('张三', '好友', '苍蝇再小也是肉，小小意思不成敬意'),
                    _renderItem('李四', '', '听说你是大美女，求加好友'),
                    
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('12:13:45'),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          OutlineButton(
                            child: Text('我要捐步',style: TextStyle(color: Theme.of(context).primaryColor,),),
                            splashColor: Theme.of(context).primaryColor,
                            onPressed: (){
                              NavigatorUtils.goPayPage(context);
                            },
                          ),
                          Padding(padding: EdgeInsets.all(10.0),),
                          FlatButton(
                            child: Text('支持3.0元可拔头筹',style: TextStyle(color: XSColors.white,),),
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
        ),
      )
    );
  }
}