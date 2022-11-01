import 'package:doan_ltdd/change_password.dart';
import 'package:doan_ltdd/forget_password1.dart';
import 'package:doan_ltdd/forget_password2.dart';
import 'package:doan_ltdd/login_screen.dart';
import 'package:doan_ltdd/register.dart';
import 'package:doan_ltdd/field_page.dart';
import 'package:doan_ltdd/main_page.dart';
import 'package:doan_ltdd/main_screen.dart';
import 'package:doan_ltdd/package_page.dart';
import 'package:doan_ltdd/play_page.dart';
import 'package:doan_ltdd/record_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(DoAn());

class DoAn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đăng Nhập',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
