import 'package:flutter/material.dart';
import 'package:pet_s_miu/FE/home_screen.dart';
import 'package:pet_s_miu/FE/news_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
