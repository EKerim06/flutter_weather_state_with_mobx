import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hava_durumu/constant/context_extension.dart';

class AnlikSicaklik extends StatelessWidget {
  final double anlikSicaklik;
  const AnlikSicaklik({required this.anlikSicaklik, super.key});

  @override
  Widget build(BuildContext context) {
    return Text('${anlikSicaklik.floor().toString()}°C',
        style: TextStyle(
          color: Colors.black,
          fontSize: context.mediumFontSize,
        ));
  }
}
