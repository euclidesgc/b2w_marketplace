import 'cadastro_seller_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_seller_page.dart';

class CadastroSellerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CadastroSellerController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CadastroSellerPage()),
      ];

  static Inject get to => Inject<CadastroSellerModule>.of();
}
