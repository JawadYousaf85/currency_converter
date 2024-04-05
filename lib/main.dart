import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //for material app
  //runApp(const MyCupertinoApp()); // For Apple ios and Macos
}

// Two Designs
//1.  MaterialAPP (google)
//2.  CupertinoApp (Apple)

// Types of Widgets
//1.  Stateless Widgets
//2.  Statefull Widgets
//3.  Inherited Widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMatrrialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
