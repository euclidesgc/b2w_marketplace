import 'package:flutter/material.dart';

class B2wTituloSimples extends StatelessWidget {
  final String title;

  const B2wTituloSimples({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline6);
  }
}
