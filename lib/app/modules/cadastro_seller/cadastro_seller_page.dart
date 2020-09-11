import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_titulo_simples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_seller_controller.dart';

class CadastroSellerPage extends StatefulWidget {
  final String title;
  const CadastroSellerPage({Key key, this.title = "CadastroSeller"}) : super(key: key);

  @override
  _CadastroSellerPageState createState() => _CadastroSellerPageState();
}

class _CadastroSellerPageState extends ModularState<CadastroSellerPage, CadastroSellerController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: B2wHorizontalLogo(size: 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            B2wTituloSimples(
              title:
                  "Você está a poucos passos de vender seus produtos na maior plataforma de e-comerce da América Latina!",
            )
          ],
        ),
      ),
    );
  }
}
