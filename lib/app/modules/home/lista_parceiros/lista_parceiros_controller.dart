import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'lista_parceiros_controller.g.dart';

@Injectable()
class ListaParceirosController = _ListaParceirosControllerBase
    with _$ListaParceirosController;

abstract class _ListaParceirosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
