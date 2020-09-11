import 'package:b2w_marketplace/app/shared/widgets/b2w_app_bar.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_horizontal_logo.dart';
import 'package:b2w_marketplace/app/shared/widgets/b2w_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  void initState() {
    controller.pesquisar = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: B2wAppBar(
        title: Observer(builder: (_) {
          if (controller.pesquisar) {
            return B2wTextField(
              labelTextColor: Colors.white,
              label: "Nome ou CNPJ do parceiro",
              textColor: Colors.white,
              // hint: "Nome ou CNPJ do parceiro",
            );
          } else {
            return B2wHorizontalLogo(size: 16);
          }
        }),
        actions: [
          Observer(
            builder: (_) {
              if (controller.pesquisar) {
                return IconButton(icon: Icon(Icons.check), onPressed: () => controller.setPesquisar());
              } else {
                return IconButton(icon: Icon(Icons.search), onPressed: () => controller.setPesquisar());
              }
            },
          )
        ],
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Partner Name", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("2345678909876"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => Modular.to.pushReplacementNamed("/principal"),
            );
          },
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
