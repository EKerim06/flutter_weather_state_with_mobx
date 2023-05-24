// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable


import 'package:hava_durumu/data/model/sehir_adi_pref.dart';
import 'package:hava_durumu/data/service/local_storage_service.dart';
import 'package:hava_durumu/data/service/shared_service_pref.dart';

import 'package:hava_durumu/future/weather/service/anlik%20hava%20durumu/IWeatherService.dart';

class WeatherService extends IWeatherService {
  WeatherService(super.dio);

  final LocalStorageService _localStorageService = SharedPreferencesService();

  @override
  Future<Map<String, dynamic>> havaDurumunuGetir(String sehir) async {
    String anlikAdres =
        'https://api.openweathermap.org/data/2.5/weather?q=$sehir&appid=028285f39c9f3464a4c90af16c924c2f&lang=tr&units=metric';

    final cevap = await dio.get(anlikAdres);

    if (cevap.statusCode == 200) {
      Map<String, dynamic> data = cevap.data;
      var sehirAdi = SehirAdiPref(name: sehir);

      await _localStorageService.sehirAdiniKaydet(sehir);
      return data;
    } else {
      print('Anlik veri hata donderdi. Hata kodu : ${cevap.statusCode}');
      return {};
    }
  }

  @override
  Future<Map<String, dynamic>> havaDurumuTahminleriniGetir(
      String tahminSehirAdi) async {
    String ucsaatlikAdres =
        'https://api.openweathermap.org/data/2.5/forecast?q=$tahminSehirAdi&appid=028285f39c9f3464a4c90af16c924c2f&units=metric&lang=tr';

    final tahminCevap = await dio.get(ucsaatlikAdres);

    if (tahminCevap.statusCode == 200) {
      Map<String, dynamic> tahminData = tahminCevap.data;
      return tahminData;
    } else {
      print(
          'Tahmin verisi hata donderdi. Hata kodu : ${tahminCevap.statusCode}');
      return {};
    }
  }
}
