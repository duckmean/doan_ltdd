import 'dart:convert';

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/UI/main_page.dart';

import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';

import '../../provider/auth_service.dart';
import '../../provider/global_service.dart';
import 'login_screen.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email = '';
  String _pasword = '';
  String _name = '';
  TextEditingController _checkPassController = TextEditingController();
  createAccount() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response =
          await AuthService.register(_name, _email, _pasword);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        nextScreen(
          context,
          LoginScreen(),
        );
      } else {
        errorSnackbar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackbar(context, 'Email không hợp lệ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 111, 190, 255),
              Color.fromARGB(255, 111, 190, 255),
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Đăng Ký",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          onChanged: (value) {
                            _name = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Nhập tên ingame',
                            labelText: 'Tên ingame',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          onChanged: (value) {
                            _email = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'abc@gmail.com',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          onChanged: (value) {
                            _pasword = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập mật khẩu',
                            labelText: 'Mật khẩu',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          onTap: () {
                            if (checkPassWord() == false) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: AppColor.redbtn2,
                                  content: Text(
                                      "Xác thực lại mật khẩu không chính xác"),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          controller: _checkPassController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập mật khẩu xác nhận',
                            labelText: 'Mật khẩu xác nhận',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.all(15),
                      //   child: const TextField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Họ Và Tên',
                      //       labelText: 'Nhập Họ Và Tên',
                      //       border: OutlineInputBorder(),
                      //       prefixIcon: Icon(Icons.edit),
                      //     ),
                      //   ),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: <Widget>[
                      //     TextButton(
                      //       child: const Text(
                      //         'Quay lại',
                      //         style: TextStyle(fontSize: 17),
                      //       ),
                      //       onPressed: () {
                      //         nextScreen(
                      //           context,
                      //           LoginScreen(),
                      //         );
                      //       },
                      //     )
                      //   ],
                      // ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {
                            // showDialog(
                            //   context: context,
                            //   builder: (context) {
                            //     return AlertDialog(
                            //       title: Text('Đăng ký thành công'),
                            //       content: Text('Quay lại trang đăng nhập'),
                            //       //     Navigator.pop(context);
                            //       //   },
                            //       //   child: Text('OK'),
                            //       // ),
                            //       // ],
                            //     );
                            //   },
                            // );
                            createAccount();
                          }, //bo sung 2
                          child: const Text('Đăng Ký',
                              style: TextStyle(fontSize: 20)),
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.red),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(350, 60)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: () {
                            nextScreen(context, LoginScreen());
                          },
                          backgroundColor: AppColor.bluebtn2,
                          child: Icon(Icons.reply_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool checkPassWord() {
    if (_pasword == _checkPassController.text) {
      return true;
    }
    return false;
  }
}
