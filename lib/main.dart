// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'pages/interface/main_screen.dart';

void main() => runApp(const AilatrieuPhu());

class AilatrieuPhu extends StatelessWidget {
  const AilatrieuPhu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
