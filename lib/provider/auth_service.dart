import 'dart:convert';

import 'package:doan_ltdd/provider/global_service.dart';
import 'package:http/http.dart' as http;

class AuthService {
  static Future<http.Response> register(
      String name, String email, String password) async {
    Map data = {"name": name, "email": email, "password": password};
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/register');
    http.Response response =
        await http.post(url, headers: hearders, body: body);
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {"email": email, "password": password};
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/login');
    http.Response response =
        await http.post(url, headers: hearders, body: body);
    print(response.body);
    return response;
  }
}
