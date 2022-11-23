// ignore_for_file: prefer_const_constructors
import 'package:doan_ltdd/pages/interface/main_page.dart';
import 'package:flutter/material.dart';
import 'pages/interface/welcome_page.dart';

void main() => runApp(const AilatrieuPhu());

class AilatrieuPhu extends StatelessWidget {
  const AilatrieuPhu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        'welcome': (context) => WelcomeScreen(),
        'main': (context) => MainPage(),
      },
    );
  }
}
