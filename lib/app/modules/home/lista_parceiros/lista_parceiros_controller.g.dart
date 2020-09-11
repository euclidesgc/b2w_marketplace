// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_parceiros_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListaParceirosController = BindInject(
  (i) => ListaParceirosController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaParceirosController on _ListaParceirosControllerBase, Store {
  final _$pesquisarAtom = Atom(name: '_ListaParceirosControllerBase.pesquisar');

  @override
  bool get pesquisar {
    _$pesquisarAtom.reportRead();
    return super.pesquisar;
  }

  @override
  set pesquisar(bool value) {
    _$pesquisarAtom.reportWrite(value, super.pesquisar, () {
      super.pesquisar = value;
    });
  }

  final _$_ListaParceirosControllerBaseActionController =
      ActionController(name: '_ListaParceirosControllerBase');

  @override
  void setPesquisar() {
    final _$actionInfo = _$_ListaParceirosControllerBaseActionController
        .startAction(name: '_ListaParceirosControllerBase.setPesquisar');
    try {
      return super.setPesquisar();
    } finally {
      _$_ListaParceirosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pesquisar: ${pesquisar}
    ''';
  }
}
