import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_titulo_simples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends ModularState<CadastroPage, CadastroController> {
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
                  "Você está a poucos passos de vender seus produtos na maior plataforma de e-comerce da América Latina",
            )
          ],
        ),
      ),
    );
  }
}
