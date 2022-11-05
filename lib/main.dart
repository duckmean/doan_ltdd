// ignore_for_file: prefer_const_constructors

import 'package:doan_ltdd/card_3tl.dart';
import 'package:doan_ltdd/field_page.dart';
import 'package:doan_ltdd/getmore_coins.dart';
import 'package:doan_ltdd/main_page.dart';
import 'package:doan_ltdd/main_screen.dart';
//import 'package:doan_ltdd/package_page.dart';
import 'package:doan_ltdd/play_page.dart';
import 'package:doan_ltdd/record_detail.dart';
import 'package:doan_ltdd/record_page.dart';
import 'package:flutter/material.dart';

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
