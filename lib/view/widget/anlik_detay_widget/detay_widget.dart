import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/context_extension.dart';
import 'package:hava_durumu/view/widget/anlik_detay_widget/ruzgar_hizi.dart';
import 'package:hava_durumu/view/widget/anlik_detay_widget/ruzgar_yonu.dart';
import 'package:hava_durumu/view/widget/anlik_detay_widget/gorunurluk.dart';

import 'hissedilen_sicaklik.dart';
import 'max_sicaklik.dart';
import 'min_sicaklik.dart';
import 'nem.dart';

class DetayWidget extends StatelessWidget {
  final Map<String, dynamic> anlikHavaDegerleriMap;
  const DetayWidget({required this.anlikHavaDegerleriMap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: context.dynamicWith(0.05)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey.withBlue(160).withOpacity(0.2),
        ),
        width: context.dynamicWith(0.9),
        height: context.dynamicHeight(0.35),
        child: Padding(
          padding: EdgeInsets.all(context.lowallPadding),
          child: Column(
            children: [
              HissedilenSicaklik(
                  hisSicaklik: anlikHavaDegerleriMap['main']['feels_like']),
              const Spacer(),
              MinSicaklik(
                  minSicaklik: anlikHavaDegerleriMap['main']['temp_min']),
              const Spacer(),
              MaxSicaklik(
                  maxSicaklik: anlikHavaDegerleriMap['main']['temp_max']),
              const Spacer(),
              NemOrani(nemOrani: anlikHavaDegerleriMap['main']['humidity']),
              const Spacer(),
              Gorunurluk(gorunurluk: anlikHavaDegerleriMap['visibility']),
              const Spacer(),
              RuzgarHizi(ruzgarHizi: anlikHavaDegerleriMap['wind']['speed']),
              const Spacer(),
              RuzgarYonu(ruzgarYonu: anlikHavaDegerleriMap['wind']['deg']),
            ],
          ),
        ),
      ),
    );
  }
}
