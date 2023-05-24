import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hava_durumu/constant/context_extension.dart';

import '../../../constant/text_style.dart';


class MinSicaklik extends StatelessWidget {
 final  double minSicaklik;
 const MinSicaklik({required this.minSicaklik, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Minumum Sicaklik',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          minSicaklik.floor().toString(),
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
