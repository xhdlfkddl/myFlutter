import 'package:class_carrot_market_v1/screens/main_screens.dart';
import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '당근마켓',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: themeData(),
    );
  }
}
