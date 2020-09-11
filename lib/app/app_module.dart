import 'package:b2w_marketplace/app/app_widget.dart';
import 'package:b2w_marketplace/app/modules/home/home_module.dart';
import 'package:b2w_marketplace/app/modules/lista_parceiros/lista_parceiros_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/cadastro_seller/cadastro_seller_module.dart';
import 'modules/dashboard/dashboard_module.dart';
import 'modules/lista_parceiros/lista_parceiros_page.dart';
import 'modules/login/login_module.dart';
import 'modules/pedidos/pedidos_module.dart';
import 'modules/principal/principal_module.dart';
import 'modules/produtos/produtos_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $ListaParceirosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter("/cadastro_seller", module: CadastroSellerModule()),
        ModularRouter("/dashboard", module: DashboardModule()),
        ModularRouter("/home", module: HomeModule()),
        ModularRouter("/login", module: LoginModule()),
        ModularRouter("/pedidos", module: PedidosModule()),
        ModularRouter("/principal", module: PrincipalModule()),
        ModularRouter("/produtos", module: ProdutosModule()),
        ModularRouter("/lista_parceiros", child: (_, args) => ListaParceirosPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
