import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hava_durumu/constant/context_extension.dart';

import '../../../constant/text_style.dart';

class MaxSicaklik extends StatelessWidget {
  final double maxSicaklik;
  MaxSicaklik({required this.maxSicaklik, super.key});
 final List<String> degerler = [
    'Kuzey',
    'KuzeyDogu',
    'Dogu',
    'GuneyDogu',
    'Guney',
    'GuneyBati',
    'Bati',
    'KuzeyBati',
  ];

  void yonHesapla(int yondegeri) {
    if (yondegeri > 360) {
      int yeniDeger = (yondegeri % 360);
      yeniDeger = (yeniDeger / 45).floor();
      print(yeniDeger);
    } else {
      int yenidDeger = (yondegeri / 45).floor();
      print(degerler[yenidDeger]);
    }
  }

  @override
  Widget build(BuildContext context) {
    yonHesapla(192);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Maksimum Sicaklik',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          maxSicaklik.floor().toString(),
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
