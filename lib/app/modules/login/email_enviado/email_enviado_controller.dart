import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'email_enviado_controller.g.dart';

@Injectable()
class EmailEnviadoController = _EmailEnviadoControllerBase
    with _$EmailEnviadoController;

abstract class _EmailEnviadoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
