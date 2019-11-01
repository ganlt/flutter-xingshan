import 'package:flutter/material.dart';

///颜色
class XSColors {
  static const int primaryIntValue = 0xFF17C5B3;

  static const MaterialColor primarySwatch = const MaterialColor(
    primaryIntValue,
    const <int, Color>{
      50: const Color(primaryIntValue),
      100: const Color(primaryIntValue),
      200: const Color(primaryIntValue),
      300: const Color(primaryIntValue),
      400: const Color(primaryIntValue),
      500: const Color(primaryIntValue),
      600: const Color(primaryIntValue),
      700: const Color(primaryIntValue),
      800: const Color(primaryIntValue),
      900: const Color(primaryIntValue),
    },
  );

  static const String primaryValueString = "#17C5B3";
  static const String primaryLightValueString = "#42464b";
  static const String primaryDarkValueString = "#121917";
  static const String miWhiteString = "#ececec";
  static const String actionBlueString = "#267aff";
  static const String webDraculaBackgroundColorString = "#282a36";

  static const Color primaryTabValue = Color(0xFFb2b2b2);

  static const Color primaryValue = Color(0xFF24292E);
  static const Color primaryLightValue = Color(0xFF42464b);
  static const Color primaryDarkValue = Color(0xFF121917);

  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color miWhite = Color(0xffececec);
  static const Color white = Color(0xFFFFFFFF);
  static const Color actionBlue = Color(0xff267aff);
  static const Color subTextColor = Color(0xff959595);
  static const Color subLightTextColor = Color(0xffc4c4c4);

  static const Color mainBackgroundColor = miWhite;

  static const Color mainTextColor = primaryDarkValue;
  static const Color textColorWhite = white;
}

///文本样式
class XSConstant {

  static const lagerTextSize = 30.0;
  static const bigTextSize = 23.0;
  static const normalTextSize = 18.0;
  static const middleTextWhiteSize = 16.0;
  static const smallTextSize = 14.0;
  static const minTextSize = 12.0;

  static const minText = TextStyle(
    color: XSColors.subLightTextColor,
    fontSize: minTextSize,
  );

  static const smallTextWhite = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: smallTextSize,
  );

  static const smallText = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: smallTextSize,
  );

  static const smallTextBold = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: smallTextSize,
    fontWeight: FontWeight.bold,
  );

  static const smallSubLightText = TextStyle(
    color: XSColors.subLightTextColor,
    fontSize: smallTextSize,
  );

  static const smallActionLightText = TextStyle(
    color: XSColors.actionBlue,
    fontSize: smallTextSize,
  );

  static const smallMiLightText = TextStyle(
    color: XSColors.miWhite,
    fontSize: smallTextSize,
  );

  static const smallSubText = TextStyle(
    color: XSColors.subTextColor,
    fontSize: smallTextSize,
  );

  static const middleText = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: middleTextWhiteSize,
  );

  static const middleTextWhite = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: middleTextWhiteSize,
  );

  static const middleSubText = TextStyle(
    color: XSColors.subTextColor,
    fontSize: middleTextWhiteSize,
  );

  static const middleSubLightText = TextStyle(
    color: XSColors.subLightTextColor,
    fontSize: middleTextWhiteSize,
  );

  static const middleTextBold = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const middleTextWhiteBold = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const middleSubTextBold = TextStyle(
    color: XSColors.subTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const normalText = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: normalTextSize,
  );

  static const normalTextBold = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalSubText = TextStyle(
    color: XSColors.subTextColor,
    fontSize: normalTextSize,
  );

  static const normalTextWhite = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: normalTextSize,
  );

  static const normalTextMitWhiteBold = TextStyle(
    color: XSColors.miWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalTextActionWhiteBold = TextStyle(
    color: XSColors.actionBlue,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalTextLight = TextStyle(
    color: XSColors.primaryLightValue,
    fontSize: normalTextSize,
  );

  static const largeText = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: bigTextSize,
  );

  static const largeTextBold = TextStyle(
    color: XSColors.mainTextColor,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeTextWhite = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: bigTextSize,
  );

  static const largeTextWhiteBold = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeTextWhite = TextStyle(
    color: XSColors.textColorWhite,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeText = TextStyle(
    color: XSColors.primaryValue,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );
}

class XSICons {
  static const String FONT_FAMILY = 'wxcIconFont';

  static const String DEFAULT_USER_ICON = 'static/images/logo.png';
  static const String DEFAULT_IMAGE = 'static/images/default_img.png';

  static const String MY_MY_TASK = 'assets/images/icons/my_my_task.png';
  static const String MY_MY_TRACK = 'assets/images/icons/my_my_track.png';
  static const String MY_MY_RANKING = 'assets/images/icons/my_my_ranking.png';
  static const String MY_MY_BOX = 'assets/images/icons/my_my_box.png';
  static const String MY_MY_IMO = 'assets/images/icons/my_my_imo+.png';
  static const String MY_MY_DYNAMIC = 'assets/images/icons/my_my_dynamic.png';
  static const String MY_MY_SETTING = 'assets/images/icons/my_my_setting.png';
  // static const String MY_MY_TASK = 'assets/images/icons/my_my_task@2x.png';

  static const IconData HOME =
      const IconData(0xe624, fontFamily: XSICons.FONT_FAMILY);
  static const IconData MORE =
      const IconData(0xe674, fontFamily: XSICons.FONT_FAMILY);
  static const IconData SEARCH =
      const IconData(0xe61c, fontFamily: XSICons.FONT_FAMILY);

  static const String TAB_WALK = 'assets/images/icons/tab_walk.png';
  static const String TAB_MESSAGE = 'assets/images/icons/tab_message.png';
  static const String TAB_PROJECT = 'assets/images/icons/tab_project.png';
  static const String TAB_FOUND = 'assets/images/icons/tab_found.png';
  static const String TAB_MY = 'assets/images/icons/tab_my.png';

  static const IconData ISSUE_EDIT_H1 = Icons.filter_1;
  static const IconData ISSUE_EDIT_H2 = Icons.filter_2;
  static const IconData ISSUE_EDIT_H3 = Icons.filter_3;
  static const IconData ISSUE_EDIT_BOLD = Icons.format_bold;
  static const IconData ISSUE_EDIT_ITALIC = Icons.format_italic;
  static const IconData ISSUE_EDIT_QUOTE = Icons.format_quote;
  static const IconData ISSUE_EDIT_CODE = Icons.format_shapes;
  static const IconData ISSUE_EDIT_LINK = Icons.insert_link;

  static const IconData NOTIFY_ALL_READ =
      const IconData(0xe62f, fontFamily: XSICons.FONT_FAMILY);

  static const IconData PUSH_ITEM_EDIT = Icons.mode_edit;
  static const IconData PUSH_ITEM_ADD = Icons.add_box;
  static const IconData PUSH_ITEM_MIN = Icons.indeterminate_check_box;
}
