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
  final _$valueAtom = Atom(name: '_ListaParceirosControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ListaParceirosControllerBaseActionController =
      ActionController(name: '_ListaParceirosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ListaParceirosControllerBaseActionController
        .startAction(name: '_ListaParceirosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ListaParceirosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
