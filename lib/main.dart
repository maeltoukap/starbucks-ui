import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:starbucks/gen/fonts.gen.dart';
import 'package:starbucks/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starbucks UI Challenge',
      theme: ThemeData(
          primaryColor: const Color(0xFF40966C),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: FontFamily.averta,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(height: 1.2),
          )),
      home: const HomeScreen(),
    );
  }
}
