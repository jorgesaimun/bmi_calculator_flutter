import 'package:bmi_calculator_flutter/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        primaryColor: const Color(0xFF0A0D22),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0D22),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: "BMI Calculator",
      home: const HomePage(),
    );
  }
}
