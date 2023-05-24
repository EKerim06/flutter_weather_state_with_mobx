// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hava_durumu/constant/context_extension.dart';
import 'package:hava_durumu/view/page/search_city.dart';
import 'package:hava_durumu/view/viewmodel/arka_plan_view-model/arka_plan_view_model.dart';
import 'package:hava_durumu/view/viewmodel/kayitli_sehiri_view-model/kayitli_sehir_view_model.dart';
import 'package:hava_durumu/view/widget/anlik_minimalist/aciklama.dart';
import 'package:hava_durumu/view/widget/anlik_minimalist/anlik_sicaklik.dart';
import 'package:hava_durumu/view/widget/anlik_minimalist/guncelleme_zamani.dart';
import 'package:hava_durumu/view/widget/anlik_minimalist/hava_durumu_resim.dart';
import 'package:hava_durumu/view/widget/anlik_minimalist/sehir_adi_widget.dart';
import 'package:hava_durumu/view/widget/tahmin_widget/tahmin_liste.dart';

import '../../data/service/local_storage_service.dart';
import '../../locator.dart';
import '../viewmodel/anlik_hava_durumu_view-model/anlik_hava_dururmu_viewmodel.dart';
import '../widget/anlik_detay_widget/detay_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final LocalStorageService _localStorageService =
      locator<LocalStorageService>();

  AnlikHavaDurumuViewModel viewModel = AnlikHavaDurumuViewModel();
  ArkaPlanViewModel renkModel = ArkaPlanViewModel();
  KayitliSehirViewModel prefModel = KayitliSehirViewModel();
  String sehir = '';

  Future<void> islemler(String sehir) async {
    await viewModel.havaDumunuGetir(sehir);
    renkModel.renkHesapla(viewModel.items['weather'][0]['icon']);
  }

  // todo yeni hava durumu ekleyemememin sebebi asagidaki if kontrolu (satir 69) orada yaptigin kontrol sehir adi bos degilse kullanmamaya yonelik
  // todo eger yeni bir kontrol atarsan duzeltebilirsin. mesala uygulama acilisinda gitme ama sonrasinda istedigin gibi gidebilirsin seklinde
  // todo yapabilirsin.

  Future<void> veriTabaniKontrol() async {
    var pref = await _localStorageService.sehirADiOku();
    sehir = pref.name;

    islemler(sehir);
  }

  @override
  Widget build(BuildContext context) {
    if (sehir.isEmpty) {
      veriTabaniKontrol();
    }

    return Observer(
      builder: (_) {
        return Scaffold(
            backgroundColor: renkModel.oankiRenk,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () async {
                      sehir = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchCity(),
                          ));

                      islemler(sehir);
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ))
              ],
              title: const Text(
                'Hava Durumu',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            body: ListView(
              itemExtent: context.dynamicHeight(1.2),
              children: [
                viewModel.pageLife == LifeState.IDDLE
                    ? prefModel.sehir.isEmpty
                        ? const Center(
                            child: Text('Lutfen sehir ekleyin'),
                          )
                        : Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SehirAdiWidget(
                                  sehirAdi: viewModel.items['name'],
                                ),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.35),
                                top: context.dynamicHeight(0.08),
                                child: HavaDurumuResim(
                                    resimKodu: viewModel.items['weather'][0]
                                        ['icon']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.36),
                                top: context.dynamicHeight(0.26),
                                child: Aciklama(
                                    aciklama: viewModel.items['weather'][0]
                                        ['description']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.425),
                                top: context.dynamicHeight(0.29),
                                child: AnlikSicaklik(
                                    anlikSicaklik: viewModel.items['main']
                                        ['temp']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.05),
                                top: context.dynamicHeight(0.36),
                                child: GuncellemeZaman(
                                    zaman: viewModel.items['dt']),
                              ),
                            ],
                          )
                    : viewModel.pageLife == LifeState.LOADING
                        ? buildLoadinfgScreen(context)
                        : Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SehirAdiWidget(
                                  sehirAdi: viewModel.items['name'],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: HavaDurumuResim(
                                    resimKodu: viewModel.items['weather'][0]
                                        ['icon']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.36),
                                top: context.dynamicHeight(0.16),
                                child: Aciklama(
                                    aciklama: viewModel.items['weather'][0]
                                        ['description']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.425),
                                top: context.dynamicHeight(0.21),
                                child: AnlikSicaklik(
                                    anlikSicaklik: viewModel.items['main']
                                        ['temp']),
                              ),
                              Positioned(
                                left: context.dynamicWith(0.05),
                                top: context.dynamicHeight(0.30),
                                child: GuncellemeZaman(
                                    zaman: viewModel.items['dt']),
                              ),
                              Positioned(
                                  top: context.dynamicHeight(0.35),
                                  child: DetayWidget(
                                    anlikHavaDegerleriMap: viewModel.items,
                                  )),
                              Positioned.fill(
                                  left: context.dynamicWith(0.06),
                                  top: context.dynamicHeight(0.725),
                                  child: Text(
                                    'Günlük Tahminler',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )),
                              Positioned(
                                  top: context.dynamicHeight(0.76),
                                  left: context.dynamicWith(0.05),
                                  right: context.dynamicWith(0.05),
                                  bottom: context.dynamicHeight(0.005),
                                  child: TahminListe(
                                    gelenTahminVerileri: viewModel.tahminVeri,
                                  )),
                            ],
                          ),
              ],
            ));
      },
    );
  }

  Widget buildLoadinfgScreen(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
