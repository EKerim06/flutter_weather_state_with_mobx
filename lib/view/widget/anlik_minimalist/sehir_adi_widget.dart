import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hava_durumu/constant/context_extension.dart';

class SehirAdiWidget extends StatelessWidget {
  final String sehirAdi;
  const SehirAdiWidget({super.key, required this.sehirAdi});
  @override
  Widget build(BuildContext context) {
    return Text(
      sehirAdi,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: context.mediumFontSize,
      ),
    );
  }
}
