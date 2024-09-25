import 'package:flutter/material.dart';
import 'package:parcial/config/theme.dart';
import 'package:parcial/presentation/screens/homeScreen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 0).themeData(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}
