import 'package:dio/dio.dart';

abstract class IWeatherService {
  final Dio dio;

  IWeatherService(this.dio);

  Future<Map<String, dynamic>> havaDurumunuGetir(String sehir);

  Future<Map<String, dynamic>> havaDurumuTahminleriniGetir(String tahminSehirAdi);
}
