import 'package:hava_durumu/data/model/sehir_adi_pref_model.dart';
import 'package:hava_durumu/data/service/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService implements LocalStorageService {
  @override
  Future<void> sehirAdiniKaydet(String sehirAdi) async {
    final pref = await SharedPreferences.getInstance();
    // pref.setString('sehirAdi', sehirAdi);
    pref.setString('sehirAdi', sehirAdi);
  }

  @override
  Future<SehirAdiPref> sehirADiOku() async {
    final preferences = await SharedPreferences.getInstance();
    var _isim = preferences.getString('sehirAdi') ?? '';
    print(preferences.get('sehirAdi'));
    print(_isim);
    return SehirAdiPref(name: _isim);
  }
}
