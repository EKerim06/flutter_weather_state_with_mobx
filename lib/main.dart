import 'package:flutter/material.dart';
import 'package:hava_durumu/view/page/home_page.dart';

import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hava Durumu',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
