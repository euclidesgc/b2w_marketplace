import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'principal_controller.g.dart';

@Injectable()
class PrincipalController = _PrincipalControllerBase with _$PrincipalController;

abstract class _PrincipalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
