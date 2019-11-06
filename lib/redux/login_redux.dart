import 'package:flutter/material.dart';
import 'package:xingshan/db/sql_manager.dart';
// import 'package:xingshan/common/dao/user_dao.dart';
import 'package:xingshan/redux/state.dart';
import 'package:xingshan/common/utils/common_utils.dart';
import 'package:xingshan/common/utils/navigator_utils.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

/**
 * 登录相关Redux
 * Created by guoshuyu
 * Date: 2018-07-16
 */
final LoginReducer = combineReducers<bool>([
  TypedReducer<bool, LoginSuccessAction>(_loginResult),
  TypedReducer<bool, LogoutAction>(_logoutResult),
]);

bool _loginResult(bool result, LoginSuccessAction action) {
  if (action.success == true) {
    NavigatorUtils.goHome(action.context);
  }
  return action.success;
}


class LoginAction {
  final BuildContext context;
  final String username;
  final String password;

  LoginAction(this.context, this.username, this.password);
}

class LoginSuccessAction {
  final BuildContext context;
  final bool success;

  LoginSuccessAction(this.context, this.success);
}

class LogoutAction {
  final BuildContext context;
  LogoutAction(this.context);
}

bool _logoutResult(bool result, LogoutAction action) {
  return true;
}


class LoginMiddleware implements MiddlewareClass<XSState> {

  @override
  void call(Store<XSState> store, dynamic action, NextDispatcher next) {
    if (action is LogoutAction) {
      // SqlManager.close();
      NavigatorUtils.goLogin(action.context);
    }
    // Make sure to forward actions to the next middleware in the chain!
    next(action);
  }
}

// class LoginEpic implements EpicClass<XSState> {
//   @override
//   Stream<dynamic> call(Stream<dynamic> actions, EpicStore<XSState> store) {
//     return Observable(actions)
//         .whereType<LoginAction>()
//         .switchMap((action) => _loginIn(action, store))
//         .debounce(
//             ((result) => TimerStream(result, const Duration(seconds: 1))));
//   }


//   Stream<dynamic> _loginIn(
//       LoginAction action, EpicStore<XSState> store) async* {
//     CommonUtils.showLoadingDialog(action.context);
//     var res = await UserDao.login(
//         action.username.trim(), action.password.trim(), store);
//     Navigator.pop(action.context);
//     yield LoginSuccessAction(action.context, (res != null && res.result));
//   }
// }
