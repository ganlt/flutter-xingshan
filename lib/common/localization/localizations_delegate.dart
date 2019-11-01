import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xingshan/common/localization/default_localizations.dart';

/*
 * 多语言代理
 */
class XSLocalizationsDelegate extends LocalizationsDelegate<XSLocalizations> {

  XSLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    ///支持中文和英语
    return ['en', 'zh'].contains(locale.languageCode);
  }

  ///根据locale，创建一个对象用于提供当前locale下的文本显示
  @override
  Future<XSLocalizations> load(Locale locale) {
    return new SynchronousFuture<XSLocalizations>(new XSLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<XSLocalizations> old) {
    return false;
  }

  ///全局静态的代理
  static XSLocalizationsDelegate delegate = new XSLocalizationsDelegate();
}
