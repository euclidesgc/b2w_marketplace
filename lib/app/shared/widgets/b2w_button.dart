import 'package:flutter/material.dart';

import '../constants.dart';

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
        color: color ?? ACCENT_COLOR,
        shape: border
            ? OutlineInputBorder(borderRadius: BorderRadius.circular(30))
            : RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
      ),
    );

    // return Container(

    //   height: altura == null ? 50 : altura,
    //   width: largura,
    //   child: RawMaterialButton(
    //     fillColor: onPressed != null ? (corDoBotao == null ? ACCENT_COLOR : corDoBotao) : Colors.grey,
    //     splashColor: ACCENT_COLOR,
    //     textStyle: TextStyle(color: corDoTexto == null ? onPressed == null ? Colors.white : Colors.black : corDoTexto),
    //     shape: RoundedRectangleBorder(
    //       side: borda == true
    //           ? BorderSide(width: 1, color: corDaBorda == null ? Colors.black : corDaBorda)
    //           : BorderSide.none,
    //       borderRadius:
    //           curvatura != 0 ? BorderRadius.circular(curvatura == null ? 30.0 : curvatura) : BorderRadius.zero,
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         iconeEsquerda == null ? Container() : iconeEsquerda,
    //         iconeEsquerda == null ? Container() : SizedBox(width: 8),
    //         Text(texto, style: TextStyle(fontSize: 16)),
    //         iconeDireita == null ? Container() : SizedBox(width: 8),
    //         iconeDireita == null ? Container() : iconeDireita,
    //       ],
    //     ),
    //     onPressed: onPressed,
    //   ),
    // );
  }
}
