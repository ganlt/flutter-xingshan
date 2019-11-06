import 'package:flutter/material.dart';
import 'package:xingshan/common/style/style.dart';
import 'package:xingshan/common/utils/common_utils.dart';

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
  _XSInputPhoneWidgetState createState() => new _XSInputPhoneWidgetState();
}

/// State for [XSInputPhoneWidget] widgets.
class _XSInputPhoneWidgetState extends State<XSInputPhoneWidget> {
  _XSInputPhoneWidgetState() : super();

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 3,
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
          child: FlatButton(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 13.0, 0, 13.0),
              child: Text(
                CommonUtils.getLocale(context).get_validate_code_text,
                style: TextStyle(
                  fontSize: 14,
                  color: XSColors.white,
                ),
              ),
            ),
            onPressed: () {

            },
          ),
        )
      ],
    );
  }
}
