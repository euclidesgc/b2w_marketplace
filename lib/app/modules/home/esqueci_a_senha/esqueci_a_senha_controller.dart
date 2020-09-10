import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'esqueci_a_senha_controller.g.dart';

@Injectable()
class EsqueciASenhaController = _EsqueciASenhaControllerBase
    with _$EsqueciASenhaController;

abstract class _EsqueciASenhaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
