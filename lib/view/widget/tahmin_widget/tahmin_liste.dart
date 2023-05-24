import 'package:flutter/material.dart';

import 'package:hava_durumu/constant/context_extension.dart';

class TahminListe extends StatelessWidget {
  final Map<String, dynamic> gelenTahminVerileri;
  const TahminListe({required this.gelenTahminVerileri, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: context.dynamicWith(0.6),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                '${(gelenTahminVerileri['list'][index]['main']['temp'])}°C'),
            leading: Image.network(
                'https://openweathermap.org/img/wn/${(gelenTahminVerileri['list'][index]['weather'][0]['icon']).toString()}@2x.png'),
            trailing: Text(gelenTahminVerileri['list'][index]['weather'][0]
                    ['description']
                .toString()),
          );
        },
        itemCount: 5);
  }

  // ignore: non_constant_identifier_names
  // String GunHesabi(Map<String, dynamic> veriler) {
  //   // todo 5 gunun saat 12 verisi
  //   int i = 3;

  //   while (i < 40) {
  //     print('saat verileri ${veriler['list'][i]['dt_txt']}');

  //     i += 8;
  //     return veriler['list'][i]['dt_txt'] as String;
  //   }
  // }
}
