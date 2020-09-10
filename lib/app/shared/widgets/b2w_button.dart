import 'package:flutter/material.dart';

class B2wButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final bool border;
  final double height;
  final double width;
  final Color color;
  final Widget leftWidget;
  final Widget rightWidget;

  const B2wButton(
    this.child, {
    Key key,
    this.border = false,
    this.onPressed,
    this.height,
    this.width,
    this.color,
    this.leftWidget,
    this.rightWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? MediaQuery.of(context).size.width,
      child: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              leftWidget != null ? leftWidget : Container(),
              child,
              rightWidget != null ? rightWidget : Container(),
            ],
          ),
        ),
        color: color ?? Theme.of(context).accentColor,
        shape: border
            ? OutlineInputBorder(borderRadius: BorderRadius.circular(30))
            : RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
      ),
    );
  }
}
