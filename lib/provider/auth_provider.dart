import 'package:shared_preferences/shared_preferences.dart';

import 'auth_service.dart';

class AuthProvider {
  bool? isSignin;
  String? email;
  String? password;
  String? ImgUrl;
  String? name;

  Future checkUserExist() async {}

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

  Future removeDataLoginFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('login');
  }
}
