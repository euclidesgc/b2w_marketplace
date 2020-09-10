import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_titulo_simples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'esqueci_a_senha_controller.dart';

class EsqueciASenhaPage extends StatefulWidget {
  final String title;
  const EsqueciASenhaPage({Key key, this.title = "EsqueciASenha"}) : super(key: key);

  @override
  _EsqueciASenhaPageState createState() => _EsqueciASenhaPageState();
}

class _EsqueciASenhaPageState extends ModularState<EsqueciASenhaPage, EsqueciASenhaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: B2wHorizontalLogo(16),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              B2wTituloSimples("Esqueceu a senha?"),
              SizedBox(height: 16),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: "Informe seu email de cadastro ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text:
                          "ou nome de usuário, e nós enviaremos um email com um link para voce redefinir a sua senha.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
