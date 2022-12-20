import 'dart:convert';
import 'package:doan_ltdd/provider/field_object.dart';
import 'package:http/http.dart' as http;

class linhvucProvider {
  static List<FieldQuestion> parsePackage(String responseBody) {
    final parsed = jsonDecode(responseBody);
    final data = parsed["fieds"];
    print(data);
    data.cast<Map<String, dynamic>>();
    return data.map<FieldQuestion>((e) => FieldQuestion.fromJson(e)).toList();
  }

  static Future<List<FieldQuestion>> fetchPackage() async {
    final response =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/linhvuc'));
    print(response);
    return parsePackage(response.body);
  }

  static getAllContacts() {}
}
