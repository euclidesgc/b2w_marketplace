import 'package:b2w_marketplace/app/shared/constants.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_button.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            BACKGROUND_IMAGE,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 300,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: Text("Português"),
                    onPressed: () {
                      setState(() {
                        S.load(Locale('pt', 'BR'));
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text("Inglês"),
                    onPressed: () {
                      setState(() {
                        S.load(Locale('en'));
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: B2wHorizontalLogo(size: 28),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: Offset(10, 10),
                    )
                  ],
                ),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(width: MediaQuery.of(context).size.width),
                    B2wButton(
                      S.of(context).pageHomeCreateAccount,
                      leftWidget: Icon(Icons.add),
                      onPressed: () => Modular.to.pushNamed("/cadastro_seller"),
                    ),
                    SizedBox(height: 20),
                    B2wButton(
                      S.of(context).pageHomeAccessAccount,
                      leftWidget: Icon(Icons.send),
                      border: true,
                      color: Colors.white,
                      onPressed: () => Modular.to.pushNamed("/login"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
