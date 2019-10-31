import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:xingshan/redux/state.dart';
import 'package:xingshan/common/utils/common_utils.dart';
import 'package:xingshan/common/style/style.dart';

import 'package:xingshan/page/home/home_page.dart';
import 'package:xingshan/page/my/my_page.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = new Store<XSState>(
    appReducer,
    initialState: new XSState(
      themeData: CommonUtils.getThemeData(XSColors.primarySwatch),
    ),
  );

  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new StoreBuilder<XSState>(builder: (context, store) {
        return new MaterialApp(
          title: '行善',
          theme: store.state.themeData,
          home: Homes(),
        );
      }),
    );
  }
}
class Homes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomesState();
  }
}

class _HomesState extends State<Homes> {
  int _currentIndex = 0;
  final List<Widget> _children = [XSHomepage(), XSHomepage(), XSHomepage(), XSHomepage(), XSMyPage()];

  final List<BottomNavigationBarItem> _list = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe6d0, fontFamily: "wxcIconFont")),
        title: Text('行'),
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: Text('消息'),
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.book),
        title: Text('项目'),
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.find_in_page),
        title: Text('发现'),
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('我的'),
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: _list,
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}