import 'package:flutter/material.dart';
import 'package:whatif/Screens/Home.dart';
import 'package:whatif/core/config/style/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What IF',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppTheme.theme,
      home:const Home()
    );
  }
}