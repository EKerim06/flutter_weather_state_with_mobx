import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'arka_plan_view_model.g.dart';

class ArkaPlanViewModel = _ArkaPlanViewModelBase with _$ArkaPlanViewModel;

abstract class _ArkaPlanViewModelBase with Store {
  @observable
  Color oankiRenk = Colors.white;

  @action
  void renkHesapla(String resimKodu) {
    print(resimKodu);
    switch (resimKodu) {
      case '01d':
        oankiRenk = Color.fromARGB(255, 199, 250, 242);
        break;
      case '02d':
        oankiRenk = Color.fromARGB(255, 184, 238, 234);
        break;

      case '03d':
        oankiRenk = Color.fromARGB(255, 223, 229, 229);
        break;

      case '04d':
        oankiRenk = Color.fromARGB(255, 202, 207, 207);
        break;

      case '09d':
        oankiRenk = Color.fromARGB(255, 176, 186, 193);
        break;

      case '10d':
        oankiRenk = Color.fromARGB(255, 235, 239, 164);
        break;

      case '11d':
        oankiRenk = Color.fromARGB(255, 75, 122, 158);
        break;

      case '13d':
        oankiRenk = Color.fromARGB(255, 236, 245, 245);
        break;

      case '50d':
        oankiRenk = Color.fromARGB(255, 235, 242, 249);
        break;

      default:
        oankiRenk = Colors.green;
    }
  }
}
