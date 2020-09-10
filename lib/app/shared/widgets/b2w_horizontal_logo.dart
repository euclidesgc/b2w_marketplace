import 'package:flutter/material.dart';

class B2wHorizontalLogo extends StatelessWidget {
  final double size;
  const B2wHorizontalLogo(
    this.size, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'B2W',
              style: TextStyle(
                fontFamily: "Montserrat",
                color: Theme.of(context).accentColor,
                fontSize: size,
              ),
            ),
            TextSpan(
              text: 'MARKETPLACE',
              style: TextStyle(
                color: Colors.white,
                fontSize: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
