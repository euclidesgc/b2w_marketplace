import 'package:b2w_marketplace/app/modules/dashboard/dashboard_controller.dart';
import 'package:b2w_marketplace/app/modules/dashboard/dashboard_page.dart';
import 'package:b2w_marketplace/app/modules/pedidos/pedidos_controller.dart';
import 'package:b2w_marketplace/app/modules/pedidos/pedidos_page.dart';
import 'package:b2w_marketplace/app/modules/produtos/produtos_controller.dart';
import 'package:b2w_marketplace/app/modules/produtos/produtos_page.dart';

import 'principal_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'principal_page.dart';

class PrincipalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PrincipalController,
        Bind((i) => DashboardPage()),
        Bind((i) => DashboardController()),
        Bind((i) => PedidosPage()),
        Bind((i) => PedidosController()),
        Bind((i) => ProdutosPage()),
        Bind((i) => ProdutosController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PrincipalPage()),
      ];

  static Inject get to => Inject<PrincipalModule>.of();
}
