import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/context_extension.dart';

import '../../../constant/text_style.dart';


class RuzgarHizi extends StatelessWidget {
  final ruzgarHizi;
 const RuzgarHizi({required this.ruzgarHizi ,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Ruzgar hizi',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          '${ruzgarHizi.toString()} m/s',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
