import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

final ThemeDataReducer = combineReducers<ThemeData>([
  // 将action（RefreshThemeDataAction）和处理action的方法（_refresh）以及state（ThemeData）绑定
  TypedReducer<ThemeData, RefreshThemeDataAction>(_refresh),
]);
// 处理action的方法，参数为state，action，返回新的state
ThemeData _refresh(ThemeData themeData, action) {
  themeData = action.themeData;
  return themeData; 
}
// 一个action类，在reducer中将 reducer和处理该action的方法绑定（这里指的是_refresh）
class RefreshThemeDataAction {
  // 定义
  final ThemeData themeData;
  // 构造函数
  RefreshThemeDataAction(this.themeData);
}
