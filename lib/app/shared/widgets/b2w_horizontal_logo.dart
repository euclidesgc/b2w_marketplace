import 'package:flutter/material.dart';

import '../constants.dart';

class B2wHorizontalLogo extends StatelessWidget {
  const B2wHorizontalLogo({
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
                fontWeight: FontWeight.bold,
                color: ACCENT_COLOR,
                fontSize: 28,
              ),
            ),
            TextSpan(
              text: 'MARKETPLACE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
