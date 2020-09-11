import 'package:b2w_marketplace/app/modules/login/email_enviado/email_enviado_controller.dart';
import 'package:b2w_marketplace/app/modules/login/esqueci_a_senha/esqueci_a_senha_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'email_enviado/email_enviado_page.dart';
import 'esqueci_a_senha/esqueci_a_senha_page.dart';
import 'login_controller.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $EsqueciASenhaController,
        $EmailEnviadoController,
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter("/esqueci_a_senha", child: (_, args) => EsqueciASenhaPage()),
        ModularRouter("/email_enviado", child: (_, args) => EmailEnviadoPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
