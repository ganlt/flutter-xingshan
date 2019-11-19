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

  static const Color primaryLineValue = Color(0xFFF5F7F7);

  static const Color primaryValue = Color(0xFF17C5B3);
  static const Color primaryLightValue = Color(0xFF42464b);
  static const Color primaryDarkValue = Color(0xFF121917);
  static const Color primaryBorderValue = Color(0xffdbdbdb);

  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color miWhite = Color(0xffececec);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color actionBlue = Color(0xff267aff);
  static const Color subTextColor = Color(0xff959595);
  static const Color subLightTextColor = Color(0xffc4c4c4);
  static const Color dividerColor = Color(0xffd8d8d8);
  static const Color moneyMainColor = Color(0xffEF7363);
  static const Color greyTextColor = Color(0xff808080);
  static const Color orangeTextColor = Color(0xfff5a623);
  static const Color redTextColor = Color(0xffEB5340);
  static const Color fixedTabColor = Color(0xffeeeeee);
  static const Color pinkColor = Color(0xfff46690);
  static const Color blueColor = Color(0xff669bec);
  
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
  static const String AVATAR = 'assets/images/avatar.jpg';
  static const String FONT_FAMILY = 'wxcIconFont';
  static const String CLOSE_BUTTON = 'assets/images/icons/found/close_button.png';

  static const BACK_BUTTON = "assets/images/icons/back_btn.png";

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

  // static const String TAB_WALK_Tapped = 'assets/images/icons/tab_walk_selected.png';
  // static const String TAB_MESSAGE_Tapped = 'assets/images/icons/tab_message_selected.png';
  // static const String TAB_PROJECT_Tapped = 'assets/images/icons/tab_project_selected.png';
  // static const String TAB_FOUND_Tapped = 'assets/images/icons/tab_found_selected.png';
  // static const String TAB_MY_Tapped = 'assets/images/icons/tab_my_selected.png';

  static const String FOUND_DYNAMIC = 'assets/images/icons/found_dynamic.png';
  static const String FOUND_TASK_LIST = 'assets/images/icons/found_task_list.png';
  static const String FOUND_TASK = 'assets/images/icons/found_task.png';
  static const String FOUND_SQUARE = 'assets/images/icons/found_square.png';
  static const String FOUND_TEAM = 'assets/images/icons/found_team.png';

  static const String DIALOG_CLOSE = 'assets/images/icons/found/found_dialog_close_btn.png';
  static const String FOUND_TASKLIST_FILTRATE = 'assets/images/icons/found/found_tasklist_filtrate.png';
  static const String SHARE_BUTTON = 'assets/images/icons/found/found_task_share.png';
  static const String COMMENT_BUTTON = 'assets/images/icons/found/found_dynamic_comment.png';

  static const String QQ_ICON = 'assets/images/icons/qq_login.png';
  static const String WECHAT_ICON = 'assets/images/icons/weixin_login.png';
  static const String WEIBO_ICON = 'assets/images/icons/weibo_login.png';

  static const String MY_EXPAND = 'assets/images/icons/my_expand.png';

  static const String PROJECT_HEART_GREY = 'assets/images/icons/project_heart_grey.png';
  static const String PROJECT_COMMENT = 'assets/images/icons/project_comment.png';
  static const String PROJECT_BACKGROUND = 'assets/images/icons/project_detail_background.png';

  static const IconData LOGIN_USER =
      const IconData(0xe666, fontFamily: XSICons.FONT_FAMILY);
  static const IconData LOGIN_PW =
      const IconData(0xe60e, fontFamily: XSICons.FONT_FAMILY);
}
