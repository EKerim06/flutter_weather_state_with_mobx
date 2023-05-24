// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anlik_hava_dururmu_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AnlikHavaDurumuViewModel on _AnlikHavaDurumuViewModelBase, Store {
  late final _$itemsAtom =
      Atom(name: '_AnlikHavaDurumuViewModelBase.items', context: context);

  @override
  Map<String, dynamic> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(Map<String, dynamic> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$tahminVeriAtom =
      Atom(name: '_AnlikHavaDurumuViewModelBase.tahminVeri', context: context);

  @override
  Map<String, dynamic> get tahminVeri {
    _$tahminVeriAtom.reportRead();
    return super.tahminVeri;
  }

  @override
  set tahminVeri(Map<String, dynamic> value) {
    _$tahminVeriAtom.reportWrite(value, super.tahminVeri, () {
      super.tahminVeri = value;
    });
  }

  late final _$pageLifeAtom =
      Atom(name: '_AnlikHavaDurumuViewModelBase.pageLife', context: context);

  @override
  LifeState get pageLife {
    _$pageLifeAtom.reportRead();
    return super.pageLife;
  }

  @override
  set pageLife(LifeState value) {
    _$pageLifeAtom.reportWrite(value, super.pageLife, () {
      super.pageLife = value;
    });
  }

  late final _$havaDumunuGetirAsyncAction = AsyncAction(
      '_AnlikHavaDurumuViewModelBase.havaDumunuGetir',
      context: context);

  @override
  Future<void> havaDumunuGetir(String sehir) {
    return _$havaDumunuGetirAsyncAction.run(() => super.havaDumunuGetir(sehir));
  }

  @override
  String toString() {
    return '''
items: ${items},
tahminVeri: ${tahminVeri},
pageLife: ${pageLife}
    ''';
  }
}
