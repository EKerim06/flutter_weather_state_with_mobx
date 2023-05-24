import 'package:hava_durumu/data/model/sehir_adi_pref_model.dart';

abstract class LocalStorageService {
  Future<void> sehirAdiniKaydet(String sehirAdi);

  Future<SehirAdiPref> sehirADiOku();
}
