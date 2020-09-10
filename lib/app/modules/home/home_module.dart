import 'cadastro/cadastro_controller.dart';
import 'cadastro/cadastro_page.dart';
import 'login/login_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'login/login_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CadastroController,
        $LoginController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter("/home/login", child: (_, args) => LoginPage()),
        ModularRouter("/home/cadastro", child: (_, args) => CadastroPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
