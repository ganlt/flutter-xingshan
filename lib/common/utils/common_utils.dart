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
  static showLanguageDialog(BuildContext context, Store store) {
    List<String> list = [
      CommonUtils.getLocale(context).home_language_default,
      CommonUtils.getLocale(context).home_language_zh,
      CommonUtils.getLocale(context).home_language_en,
    ];
    // CommonUtils.showCommitOptionDialog(context, list, (index) {
    //   CommonUtils.changeLocale(store, index);
    //   LocalStorage.save(Config.LOCALE, index.toString());
    // }, height: 150.0);
  }
  // static Future<Null> showCommitOptionDialog(
  //   BuildContext context,
  //   List<String> commitMaps,
  //   ValueChanged<int> onTap, {
  //   width = 250.0,
  //   height = 400.0,
  //   List<Color> colorList,
  // }) {
  //   return NavigatorUtils.showGSYDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Center(
  //           child: new Container(
  //             width: width,
  //             height: height,
  //             padding: new EdgeInsets.all(4.0),
  //             margin: new EdgeInsets.all(20.0),
  //             decoration: new BoxDecoration(
  //               color: GSYColors.white,
  //               //用一个BoxDecoration装饰器提供背景图片
  //               borderRadius: BorderRadius.all(Radius.circular(4.0)),
  //             ),
  //             child: new ListView.builder(
  //                 itemCount: commitMaps.length,
  //                 itemBuilder: (context, index) {
  //                   return GSYFlexButton(
  //                     maxLines: 1,
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     fontSize: 14.0,
  //                     color: colorList != null
  //                         ? colorList[index]
  //                         : Theme.of(context).primaryColor,
  //                     text: commitMaps[index],
  //                     textColor: GSYColors.white,
  //                     onPress: () {
  //                       Navigator.pop(context);
  //                       onTap(index);
  //                     },
  //                   );
  //                 }),
  //           ),
  //         );
  //       });
  // }
}