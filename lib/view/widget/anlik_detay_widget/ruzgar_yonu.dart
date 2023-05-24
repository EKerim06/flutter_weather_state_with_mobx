import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hava_durumu/constant/context_extension.dart';

import '../../../constant/text_style.dart';

class RuzgarYonu extends StatelessWidget {
 final  int ruzgarYonu;
  RuzgarYonu({required this.ruzgarYonu, super.key});
 final  List<String> degerler = [
    'Kuzey',
    'KuzeyDogu',
    'Dogu',
    'GuneyDogu',
    'Guney',
    'GuneyBati',
    'Bati',
    'KuzeyBati',
  ];

  String yonHesapla(int yondegeri) {
    if (yondegeri > 360) {
      int yeniDeger = (yondegeri % 360);
      var indexDeger = (yeniDeger / 45).floor();
      return degerler[indexDeger];
    } else {
      int yenidDeger = (yondegeri / 45).floor();
      return degerler[yenidDeger];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Ruzgar Esme yonu',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          yonHesapla(ruzgarYonu),
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
