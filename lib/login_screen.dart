import 'dart:convert';

import 'package:doan_ltdd/forget_password1.dart';
import 'package:doan_ltdd/main_page.dart';
import 'package:doan_ltdd/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController usernameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // void login(String username, password) async {
  //   try {
  //     Response response = await post(Uri.parse('https://reqres.in/api/login'),
  //         body: {'username': username,'password': password});

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data['token']);
  //       print('Login successfully');
  //     } else {
  //       print('failed');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

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
                        "Đăng Nhập",
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
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Nhập tài khoản',
                            labelText: 'Tài khoản',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập mật khẩu',
                            labelText: 'Mật khẩu',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text(
                              'Quên mật khẩu',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Forget_password1(),
                                  ));
                            },
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
                              ),
                            );
                          }, //bo sung 2
                          child: const Text('Đăng Nhập',
                              style: TextStyle(fontSize: 20)),
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.red),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(150, 60)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Nếu bạn chưa có tài khoản?',
                              style: TextStyle(fontSize: 16)),
                          TextButton(
                            child: const Text(
                              'Đăng ký',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ));
                              //signup screen
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Hoặc đăng nhập bằng ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )
                      // Container(
                      //   child: Center(
                      //   child: RichText(
                      //     text: TextSpan(
                      //       text: 'Nếu bạn chưa có tài khoản?',
                      //       style: TextStyle(color: Colors.black, fontSize: 20),
                      //        children: <TextSpan>[
                      //         TextSpan(text: ' Đăng ký',
                      //         style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      //          recognizer: TapGestureRecognizer()
                      //          ..onTap = () {}
                      //         ),
                      //        ]
                      //   ),
                      //   ),
                      // ),
                      // ),
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
}
