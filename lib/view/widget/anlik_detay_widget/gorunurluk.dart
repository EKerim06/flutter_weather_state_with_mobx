import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/context_extension.dart';

import '../../../constant/text_style.dart';

class Gorunurluk extends StatelessWidget {
  final int gorunurluk;
  const Gorunurluk({required this.gorunurluk, super.key});

  @override
  Widget build(BuildContext context) {
    var gorunurlukDegeri = gorunurluk / 1000;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Gorunurluk mesafesi',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
        Text(
          '${gorunurlukDegeri.toString()} km',
          style: DisagnTool.textDisagnSetting(fontSize: context.MiniFontSize),
        ),
      ],
    );
  }
}
