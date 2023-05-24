import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hava_durumu/constant/context_extension.dart';

class HavaDurumuResim extends StatelessWidget {
 final  String resimKodu;
  const HavaDurumuResim({required this.resimKodu, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://openweathermap.org/img/wn/$resimKodu@2x.png',
      scale: context.dynamicWith(0.0018),
    );
  }
}
