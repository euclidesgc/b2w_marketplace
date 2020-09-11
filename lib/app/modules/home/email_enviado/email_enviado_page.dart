import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_titulo_simples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'email_enviado_controller.dart';

class EmailEnviadoPage extends StatefulWidget {
  final String title;
  const EmailEnviadoPage({Key key, this.title = "EmailEnviado"}) : super(key: key);

  @override
  _EmailEnviadoPageState createState() => _EmailEnviadoPageState();
}

class _EmailEnviadoPageState extends ModularState<EmailEnviadoPage, EmailEnviadoController> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Icon(Icons.check_circle_outline, size: 30)),
                    Expanded(flex: 1, child: SizedBox(width: 16)),
                    Expanded(
                      flex: 8,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text("Email enviado com sucesso!",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
              color: Theme.of(context).accentColor,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: B2wTituloSimples(title: "Acesse seu e-mail"),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("Em alguns instantes você receberá o link para criar uma nova senha."),
            )
          ],
        ),
      ),
    );
  }
}
