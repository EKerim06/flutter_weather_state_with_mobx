import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hava_durumu/constant/context_extension.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: context.dynamicHeight(0.06),
            left: context.dynamicHeight(0.032),
            height: context.dynamicHeight(0.1),
            width: context.dynamicWith(0.9),
            child: TextFormField(
              onFieldSubmitted: (value) {
                Navigator.pop(context, value);
              },
              decoration: InputDecoration(
                labelText: 'Sehir Adi',
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
