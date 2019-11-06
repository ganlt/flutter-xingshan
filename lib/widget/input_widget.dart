import 'package:flutter/material.dart';

/// 带图标的输入框
class XSInputWidget extends StatefulWidget {
  final bool obscureText;

  final String hintText;

  final IconData iconData;

  final ValueChanged<String> onChanged;

  final TextStyle textStyle;

  final TextEditingController controller;

  XSInputWidget(
      {Key key,
      this.hintText,
      this.iconData,
      this.onChanged,
      this.textStyle,
      this.controller,
      this.obscureText = false})
      : super(key: key);

  @override
  _XSInputWidgetState createState() => new _XSInputWidgetState();
}

/// State for [XSInputWidget] widgets.
class _XSInputWidgetState extends State<XSInputWidget> {
  _XSInputWidgetState() : super();

  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      decoration: new InputDecoration(
        hintText: widget.hintText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 0, 12.0),
        icon: widget.iconData == null ? null : new Icon(widget.iconData),
      ),
    );
  }
}
