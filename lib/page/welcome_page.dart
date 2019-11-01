import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:xingshan/redux/state.dart';
import 'package:xingshan/common/style/style.dart';

class WelcomePage extends StatefulWidget {
  static final String sName = "/";

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool hadInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (hadInit) {
      return;
    }
    hadInit = true;

  }


  @override
  Widget build(BuildContext context) {
    return StoreBuilder<XSState>(
      builder: (context, store) {
        double size = 200;
        return new Container(
          color: XSColors.white,
          child: Stack(
            children: <Widget>[
              new Center(
                child: new Text(
                  'Welcome.'
                )
              ),
            ],
          ),
        );
      },
    );
  }
}
