import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:xingshan/common/event/http_error_event.dart';
import 'package:xingshan/common/event/index.dart';
import 'package:xingshan/redux/state.dart';
import 'package:xingshan/common/utils/common_utils.dart';
import 'package:xingshan/common/localization/localizations_delegate.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/net/code.dart';

import 'package:xingshan/page/welcome_page.dart';
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
      locale: Locale('zh', 'CH'),
    ),
  );

  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: StoreBuilder<XSState>(builder: (context, store) {
        return new MaterialApp(
          title: '行善',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            XSLocalizationsDelegate.delegate,
          ],
          theme: store.state.themeData,
          locale: store.state.locale,
          supportedLocales: [store.state.locale],
          routes: {
            // WelcomePage.sName: (context) {
            //   store.state.platformLocale = WidgetsBinding.instance.window.locale;
            //   return WelcomePage();
            // },
            
          },
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

class XSLocalizations extends StatefulWidget {
  final Widget child;

  XSLocalizations({Key key, this.child}) : super(key: key);

  @override
  State<XSLocalizations> createState() {
    return new _XSLocalizations();
  }
}

class _XSLocalizations extends State<XSLocalizations> {
  StreamSubscription stream;

  @override
  Widget build(BuildContext context) {
    return new StoreBuilder<XSState>(builder: (context, store) {
      ///通过 StoreBuilder 和 Localizations 实现实时多语言切换
      return new Localizations.override(
        context: context,
        locale: store.state.locale,
        child: widget.child,
      );
    });
  }

  @override
  void initState() {
    super.initState();

    ///Stream演示event bus
    stream = eventBus.on<HttpErrorEvent>().listen((event) {
      errorHandleFunction(event.code, event.message);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (stream != null) {
      stream.cancel();
      stream = null;
    }
  }

  ///网络错误提醒
  errorHandleFunction(int code, message) {
    switch (code) {
      case Code.NETWORK_ERROR:
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error);
        break;
      case 401:
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error_401);
        break;
      case 403:
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error_403);
        break;
      case 404:
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error_404);
        break;
      case Code.NETWORK_TIMEOUT:
        //超时
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error_timeout);
        break;
      default:
        Fluttertoast.showToast(
            msg: CommonUtils.getLocale(context).network_error_unknown +
                " " +
                message);
        break;
    }
  }
}
