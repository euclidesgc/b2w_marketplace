import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'lista_parceiros_controller.dart';

class ListaParceirosPage extends StatefulWidget {
  final String title;
  const ListaParceirosPage({Key key, this.title = "ListaParceiros"}) : super(key: key);

  @override
  _ListaParceirosPageState createState() => _ListaParceirosPageState();
}

class _ListaParceirosPageState extends ModularState<ListaParceirosPage, ListaParceirosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: B2wHorizontalLogo(16),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
