import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/context_extension.dart';

class Aciklama extends StatelessWidget {
 final  String aciklama;
  const Aciklama({required this.aciklama, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hafif Yagmur',
      style: TextStyle(fontSize: context.lowFontSize, color: Colors.black),
    );
  }
}
