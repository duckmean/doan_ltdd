import 'package:doan_ltdd/change_password.dart';
import 'package:doan_ltdd/forget_password1.dart';
import 'package:doan_ltdd/forget_password2.dart';
import 'package:doan_ltdd/login_screen.dart';
import 'package:doan_ltdd/register.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(DoAn());

class DoAn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Đăng Nhập',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
