import 'package:flutter/material.dart';
import 'package:minicurso_flutter/screens/homeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeScreen()
      );
  }
}
