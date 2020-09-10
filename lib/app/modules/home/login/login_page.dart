import 'package:b2w_marketplace/app/shared/widgets/b2w_button.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    TextEditingController tecUsuario = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: B2wHorizontalLogo(16),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(height: 16),
              Text(
                "Acessar sua conta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              B2wTextField(
                label: "Usuário",
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                prefixIcon: Icon(Icons.email),
                controller: tecUsuario,
                onChanged: (text) {
                  // controller.setEmail(text);
                },
              ),
              SizedBox(height: 16),
              Observer(builder: (_) {
                return B2wTextField(
                  label: "Senha",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  password: controller.passwordVisible ? false : true,
                  onChanged: (text) {
                    // controller.setSenha(text);
                  },
                  suffix: IconButton(
                    icon: controller.passwordVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: controller.togglePasswordVisibility,
                  ),
                  prefixIcon: Icon(Icons.vpn_key),
                );
              }),
              SizedBox(height: 16),
              InkWell(
                onTap: () => Modular.to.pushNamed("/home/esqueci_a_senha"),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Esqueci a minha senha",
                    textAlign: TextAlign.right,
                    style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 30),
              B2wButton(
                "Entrar",
                onPressed: () => Modular.to.pushNamed("/home/lista_parceiros"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
