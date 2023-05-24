// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kayitli_sehir_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$KayitliSehirViewModel on _KayitliSehirViewModelBase, Store {
  late final _$sehirAtom =
      Atom(name: '_KayitliSehirViewModelBase.sehir', context: context);

  @override
  String get sehir {
    _$sehirAtom.reportRead();
    return super.sehir;
  }

  @override
  set sehir(String value) {
    _$sehirAtom.reportWrite(value, super.sehir, () {
      super.sehir = value;
    });
  }

  late final _$kayitliSehiriGetirAsyncAction = AsyncAction(
      '_KayitliSehirViewModelBase.kayitliSehiriGetir',
      context: context);

  @override
  Future<void> kayitliSehiriGetir() {
    return _$kayitliSehiriGetirAsyncAction
        .run(() => super.kayitliSehiriGetir());
  }

  @override
  String toString() {
    return '''
sehir: ${sehir}
    ''';
  }
}
