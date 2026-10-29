import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const TeslaLostFoundApp());

class TeslaLostFoundApp extends StatelessWidget {
  const TeslaLostFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesla University Lost & Found',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF2962FF),
        scaffoldBackgroundColor: const Color(0xFFF3F6FC),
      ),
      home: const HomeScreen(),
    );
  }
}