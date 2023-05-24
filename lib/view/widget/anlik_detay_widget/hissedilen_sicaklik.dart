import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hava_durumu/constant/text_style.dart';
import 'package:hava_durumu/constant/context_extension.dart';

class HissedilenSicaklik extends StatelessWidget {
 final  double hisSicaklik;
  const HissedilenSicaklik({required this.hisSicaklik, super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hissedilen Sicaklik',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          hisSicaklik.floor().toString(),
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
