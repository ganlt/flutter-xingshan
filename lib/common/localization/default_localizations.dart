import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/string_base.dart';
import 'package:xingshan/common/style/string_en.dart';
import 'package:xingshan/common/style/string_zh.dart';

///自定义多语言实现
class XSLocalizations {
  final Locale locale;

  XSLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///XSStringEn和XSStringZh都继承了XSStringBase
  static Map<String, XSStringBase> _localizedValues = {
    'en': new XSStringEn(),
    'zh': new XSStringZh(),
  };

  XSStringBase get currentLocalized {
    if(_localizedValues.containsKey(locale.languageCode)) {
      return _localizedValues[locale.languageCode];
    }
    return _localizedValues["en"];
  }

  ///通过 Localizations 加载当前的 XSLocalizations
  ///获取对应的 XSStringBase
  static XSLocalizations of(BuildContext context) {
    return Localizations.of(context, XSLocalizations);
  }
}
