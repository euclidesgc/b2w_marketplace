import 'package:b2w_marketplace/app/shared/widgets/b2w_button.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_text_field.dart';
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
        title: B2wHorizontalLogo(size: 16),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              B2wTituloSimples(title: "Esqueceu a senha?"),
              SizedBox(height: 16),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(text: "Informe seu"),
                    TextSpan(text: " e-mail de cadastro ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " ou "),
                    TextSpan(text: " nome de usuário ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ", e nós enviaremos um email com um link para voce redefinir a sua senha."),
                  ],
                ),
              ),
              SizedBox(height: 16),
              B2wTextField(
                label: "Usuário / E-mail",
                prefixIcon: Icon(Icons.mail),
              ),
              SizedBox(height: 16),
              B2wButton(
                "Continuar",
                onPressed: () => Modular.to.pushNamed("/login/email_enviado"),
              ),
              SizedBox(height: 32),
              // Ocultar de acordo com o resultado do botão enviar
              Container(
                child: Column(children: [
                  Text(
                    "Não lembra do seu e-mail ou usuário de cadastro?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Solicite essa informação enviando um e-mail com o seu CNPJ para o endereço:\n"
                    "b2w.marketplace@b2wdigital.com",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
