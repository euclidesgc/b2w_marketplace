import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro/cadastro_controller.dart';
import 'cadastro/cadastro_page.dart';
import 'esqueci_a_senha/esqueci_a_senha_controller.dart';
import 'esqueci_a_senha/esqueci_a_senha_page.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'lista_parceiros/lista_parceiros_controller.dart';
import 'lista_parceiros/lista_parceiros_page.dart';
import 'login/login_controller.dart';
import 'login/login_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ListaParceirosController,
        $EsqueciASenhaController,
        $CadastroController,
        $LoginController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter("/home/login", child: (_, args) => LoginPage()),
        ModularRouter("/home/cadastro", child: (_, args) => CadastroPage()),
        ModularRouter("/home/esqueci_a_senha", child: (_, args) => EsqueciASenhaPage()),
        ModularRouter("/home/lista_parceiros", child: (_, args) => ListaParceirosPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
