import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hava_durumu/constant/context_extension.dart';

class GuncellemeZaman extends StatelessWidget {
 final  int zaman;
 const GuncellemeZaman({required this.zaman, super.key});

  @override
  Widget build(BuildContext context) {
    var saat = DateTime.fromMillisecondsSinceEpoch(zaman * 1000);
    return Text(
      'Guncelleme : ${saat.hour}:${saat.minute}',
      style: TextStyle(
        color: Colors.black,
        fontSize: context.MiniFontSize,
      ),
    );
  }
}
