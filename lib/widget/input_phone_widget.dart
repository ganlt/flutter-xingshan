import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/common_utils.dart';
State<XSInputPhoneWidget> _xSInputPhoneWidgetState ;
/// 带图标的输入框
class XSInputPhoneWidget extends StatefulWidget {
  final bool obscureText;

  final String hintText;

  final String btnText;

  final IconData iconData;

  final ValueChanged<String> onChanged;

  final TextStyle textStyle;

  final TextEditingController controller;

  XSInputPhoneWidget(
      {Key key,
      this.hintText,
      this.btnText,
      this.iconData,
      this.onChanged,
      this.textStyle,
      this.controller,
      this.obscureText = false})
      : super(key: key);

  @override
  _XSInputPhoneWidgetState createState(){
    _xSInputPhoneWidgetState = _XSInputPhoneWidgetState();
    return _xSInputPhoneWidgetState;}
}

Timer _countdownTimer;
String _codeCountdownStr = '获取验证码';
int _countdownNum = 59;
Color _btnColor = XSColors.primaryValue;
Function() normalBtn = (){
  return  FlatButton(
    color: _btnColor,
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 13.0, 0, 13.0),
      child: Text(
        _codeCountdownStr,
        style: TextStyle(
          fontSize: 14,
          color: XSColors.white,
        ),
      ),
    ),
    onPressed: () {
      _xSInputPhoneWidgetState.setState((){
        if (_countdownTimer != null) {
            return;
        }
        _btnColor = XSColors.dividerColor;
        _codeCountdownStr = '已发送(${_countdownNum--}s)';
        _countdownTimer =
            new Timer.periodic(new Duration(seconds: 1), (timer) {
          _xSInputPhoneWidgetState.setState(() {
            if (_countdownNum > 0) {
              _codeCountdownStr = '已发送(${_countdownNum--}s)';
            } else {
              _codeCountdownStr = '获取验证码';
              _countdownNum = 59;
              _countdownTimer.cancel();
              _countdownTimer = null;
              _btnColor = XSColors.primaryValue;
            }
          });
        });
        // normalBtn = disabledBtn;
      });
    },
  );
};
/// State for [XSInputPhoneWidget] widgets.
class _XSInputPhoneWidgetState extends State<XSInputPhoneWidget> {
  _XSInputPhoneWidgetState() : super();
  @override
  void dispose() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: new TextField(
            strutStyle: StrutStyle(
              debugLabel: CommonUtils.getLocale(context).get_validate_code_text
            ),
            controller: widget.controller,
            onChanged: widget.onChanged,
            obscureText: widget.obscureText,
            decoration: new InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 0, 12.0),
              hintText: widget.hintText,
              icon: widget.iconData == null ? null : new Icon(widget.iconData),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: normalBtn()
        )
      ],
    );
  }
}
