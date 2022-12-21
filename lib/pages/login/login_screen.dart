import 'dart:convert';

import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/provider/auth_provider.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:doan_ltdd/pages/UI/welcome_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/auth_service.dart';
import '../../provider/global_service.dart';
import '../UI/main_page.dart';
import 'forget_password1.dart';
import 'register.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doan_ltdd/provider/sign_in_provider.dart';

import 'package:provider/provider.dart';
import 'package:doan_ltdd/provider/internet_provider.dart';
import 'package:doan_ltdd/utils/snack_bar.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  User? user;
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  AuthProvider auth = AuthProvider();
  // final RoundedLoadingButtonController facebookController =
  //     RoundedLoadingButtonController();

  String _email = '';
  String _password = '';

  isLoggin() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthService.login(_email, _password);

      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        User? us = await AuthService.fetchUser(_email, _password);
        saveDataLoginFromSharedPreferences();
        // nextScreenRemoveUntil(context, MainPageScreen());

        if (mounted) {
          nextScreenRemoveUntil(
            context,
            MainPageScreen(
              user: us,
            ),
          );
        }
        ;
      } else {
        errorSnackbar(context, responseMap.values.first);
      }
    } else {
      errorSnackbar(context, 'Nhập đầy đủ thông tin tài khoản mật khẩu');
    }
  }

  Future getDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getString('login');
    return pref;
  }

  Future saveDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('login', AuthService.login(_email, _password).toString());
    return pref;
  }

  Future removeDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('login');
  }

  // TextEditingController usernameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        key: _formKey,
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
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          onChanged: (value) {
                            _email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Nhập email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          onChanged: (value) {
                            _password = value;
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
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (isLoggin() != null) {
                              Map creds = {
                                'emai': _email,
                                'password': _password
                              };
                              Provider.of<AuthProvider>(context, listen: false)
                                  .login(creds: creds);

                              isLoggin();
                            } else {
                              CircularProgressIndicator();
                            }
                          },
                          child: const Text('Đăng Nhập',
                              style: TextStyle(fontSize: 20)),
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.red),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(250, 60)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Bạn chưa có tài khoản?',
                              style: TextStyle(fontSize: 15)),
                          TextButton(
                            child: const Text(
                              'Đăng ký ngay!',
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextButton(
                          child: const Text(
                            'Quên mật khẩu',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            nextScreen(
                              context,
                              Forget_password1(),
                            );
                          },
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     const Text(
                      //       'Hoặc đăng nhập bằng ',
                      //       style: TextStyle(fontSize: 16),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 30,
                      ),
                      RoundedLoadingButton(
                        onPressed: () {
                          handleGoogleSignIn();
                        },
                        controller: googleController,
                        successColor: Colors.red,
                        width: MediaQuery.of(context).size.width * 0.80,
                        elevation: 0,
                        borderRadius: 25,
                        animateOnTap: mounted,
                        color: Colors.red,
                        child: Wrap(
                          children: const [
                            Icon(
                              FontAwesomeIcons.google,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Đăng nhập Google",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // RoundedLoadingButton(
                      //   onPressed: () {
                      //     // handleFacebookAuth();
                      //   },
                      //   controller: facebookController,
                      //   successColor: Colors.blue,
                      //   width: MediaQuery.of(context).size.width * 0.80,
                      //   elevation: 0,
                      //   borderRadius: 25,
                      //   color: Colors.blue,
                      //   child: Wrap(
                      //     children: const [
                      //       Icon(
                      //         FontAwesomeIcons.facebook,
                      //         size: 20,
                      //         color: Colors.white,
                      //       ),
                      //       SizedBox(
                      //         width: 15,
                      //       ),
                      //       Text("Đăng nhập Facebook",
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500)),
                      //     ],
                      //   ),
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

  Future handleGoogleSignIn() async {
    final sp = context.read<SignInProvider>();
    final ip = context.read<InternetProvider>();
    await ip.checkInternetConnection();

    if (ip.hasInternet == false) {
      openSnackbar(context, "Check your Internet connection", Colors.red);
      googleController.reset();
    } else {
      await sp.signInWithGoogle().then(
        (value) {
          if (sp.hasError == true) {
            openSnackbar(context, sp.errorCode.toString(), Colors.red);
            googleController.reset();
          } else {
            // checking whether user exists or not
            sp.checkUserExists().then(
              (value) async {
                if (value == true) {
                  // user exists
                  await sp.getUserDataFromFirestore(sp.uid).then(
                        (value) => sp.saveDataToSharedPreferences().then(
                              (value) => sp.setSignIn().then(
                                (value) {
                                  googleController.success();
                                  handleAfterSignIn();
                                },
                              ),
                            ),
                      );
                } else {
                  // user does not exist
                  sp.saveDataToFirestore().then(
                        (value) => sp.saveDataToSharedPreferences().then(
                              (value) => sp.setSignIn().then(
                                (value) {
                                  googleController.success();
                                  handleAfterSignIn();
                                },
                              ),
                            ),
                      );
                }
              },
            );
          }
        },
      );
    }
  }

  // handle after signin
  handleAfterSignIn() {
    Future.delayed(const Duration(milliseconds: 1000)).then((value) {
      nextScreenReplace(
          context,
          HomePage(
            user: user,
          ));
    });
  }
}
