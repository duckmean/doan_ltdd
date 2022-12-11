import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//URL Điện Thoại Ảo (Giả Lập)
const String baseURL = "http://10.0.2.2:8000/api/";
//URL Điện Thoại Thiệt
// const String baseURL = "http://192.168.1.100/api/";
const Map<String, String> hearders = {"Content-Type": "application/json"};

errorSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColor.redbtn2,
      content: Text(text),
      duration: const Duration(seconds: 2),
    ),
  );
}
