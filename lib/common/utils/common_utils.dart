import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/redux/theme_redux.dart';
import 'package:xingshan/common/style/string_base.dart';
class CommonUtils {
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
}