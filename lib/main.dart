import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/main.page/main.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RMS Portfolio',
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}
