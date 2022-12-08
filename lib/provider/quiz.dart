import 'dart:convert';

import 'package:http/http.dart' as http;

//api mang
var link = "https://opentdb.com/api.php?amount=40";
//api laravel
// var link = "http://10.0.2.2:8000/api/questions";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
}

class Question {
  final String id;
  final String question;
  final String option;
  Question({required this.id, required this.question, required this.option});
  @override
  String toString() {
    return 'Question(id:$id, question:$question, option:$option)';
  }
}
