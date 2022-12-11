import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_service.dart';

class AuthProvider extends ChangeNotifier {
  bool isSignin = false;
  bool get authenticated => isSignin;
  String? email;
  String? get _email => email;
  String? password;
  String? ImgUrl;
  String? name;
  String? get _name => name;

  Future checkUserExist() async {}

  void login({Map? creds}) {
    isSignin = true;
    email = creds!["email"];
    password = creds["password"];
    notifyListeners();
  }

  void saveToken() {}
  void logout() {
    isSignin = false;
    notifyListeners();
  }

  Future getDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getString('login');
    return pref;
  }

  Future saveDataLoginFromSharedPreferences(
      String email, String password) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('login', AuthService.login(email, password).toString());
    return pref;
  }

  Future saveDataFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('email', email!);
    await pref.setString('name', name!);
    notifyListeners();
  }

  Future getDataFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = await pref.getString('name');
    email = await pref.getString('email');
    notifyListeners();
  }

  Future removeDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isSignin = false;
    pref.remove('login');
  }
}
