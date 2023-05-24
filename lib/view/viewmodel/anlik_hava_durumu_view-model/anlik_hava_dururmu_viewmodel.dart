import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import 'package:hava_durumu/future/weather/service/anlik%20hava%20durumu/IWeatherService.dart';
import 'package:hava_durumu/future/weather/service/anlik%20hava%20durumu/WeatherService.dart';

part 'anlik_hava_dururmu_viewmodel.g.dart';

class AnlikHavaDurumuViewModel = _AnlikHavaDurumuViewModelBase
    with _$AnlikHavaDurumuViewModel;

abstract class _AnlikHavaDurumuViewModelBase with Store {
  IWeatherService weatherService = WeatherService(Dio());

  @observable
  Map<String, dynamic> items = {};

  @observable
  Map<String, dynamic> tahminVeri = {};

  @observable
  LifeState pageLife = LifeState.IDDLE;

  @action
  Future<void> havaDumunuGetir(String sehir) async {
    pageLife = LifeState.LOADING;
    items = await weatherService.havaDurumunuGetir(sehir);
    tahminVeri = await weatherService.havaDurumuTahminleriniGetir(sehir);
    pageLife = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}
