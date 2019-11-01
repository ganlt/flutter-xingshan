import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/redux/state.dart';
import 'package:xingshan/redux/theme_redux.dart';
import 'package:xingshan/redux/locale_redux.dart';
import 'package:xingshan/common/style/string_base.dart';
import 'package:xingshan/common/localization/default_localizations.dart';
class CommonUtils {
  static Locale curLocale;

  static List<Color> getThemeListColor() {
    return [
      XSColors.primarySwatch,
      Colors.brown,
      Colors.blue,
      Colors.teal,
      Colors.amber,
      Colors.blueGrey,
      Colors.deepOrange,
    ];
  }

  static pushTheme(Store store, int index) {
    ThemeData themeData;
    List<Color> colors = getThemeListColor();
    themeData = getThemeData(colors[index]);
    store.dispatch(new RefreshThemeDataAction(themeData));
  }

  static getThemeData(Color color) {
    return ThemeData(primarySwatch: color, platform: TargetPlatform.android);
  }
  
  static changeLocale(Store<XSState> store, int index) {
    Locale locale = store.state.platformLocale;
    switch (index) {
      case 1:
        locale = Locale('zh', 'CH');
        break;
      case 2:
        locale = Locale('en', 'US');
        break;
    }
    curLocale = locale;
    store.dispatch(RefreshLocaleAction(locale));
  }
  static XSStringBase getLocale(BuildContext context) {
    return XSLocalizations.of(context).currentLocalized;
  }
}