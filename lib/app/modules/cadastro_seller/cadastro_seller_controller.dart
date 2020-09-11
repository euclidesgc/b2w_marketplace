import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cadastro_seller_controller.g.dart';

@Injectable()
class CadastroSellerController = _CadastroSellerControllerBase
    with _$CadastroSellerController;

abstract class _CadastroSellerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
