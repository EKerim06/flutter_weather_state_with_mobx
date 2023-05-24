import 'package:hava_durumu/data/service/local_storage_service.dart';
import 'package:hava_durumu/locator.dart';
import 'package:mobx/mobx.dart';
part 'kayitli_sehir_view_model.g.dart';

class KayitliSehirViewModel = _KayitliSehirViewModelBase
    with _$KayitliSehirViewModel;

abstract class _KayitliSehirViewModelBase with Store {
  @observable
  String sehir = '';

  final LocalStorageService _localStorageService =
      locator<LocalStorageService>();

  @action
  Future<void> kayitliSehiriGetir() async {
    var kayittanGelenSehirAdi = await _localStorageService.sehirADiOku();
    sehir = kayittanGelenSehirAdi.name;
    print('view model sehir $sehir');

  }
}
