// ignore: unused_import

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/UI/field_page.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:flutter/material.dart';
import 'package:doan_ltdd/provider/quiz.dart';
import '../login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'main_page.dart';
import 'dart:async';
import 'package:doan_ltdd/provider/time_textstyle.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  int seconds = 30;
  Timer? timer;
  var currentQuestionIndex = 0;
  late Future quizz;
  int points = 0;

  @override
  void initState() {
    super.initState();
    quizz = getQuiz();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  var isLoaded = false;

  var optionsList = [];

  var optionsColor = [
    AppColor.background,
    AppColor.background,
    AppColor.background,
    AppColor.background,
    AppColor.background,
  ];

  resetColors() {
    optionsColor = [
      AppColor.background,
      AppColor.background,
      AppColor.background,
      AppColor.background,
      AppColor.background,
    ];
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  gotoNextQuestion() {
    isLoaded = false;
    currentQuestionIndex++;
    resetColors();
    timer!.cancel();
    seconds = 30;
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFF232431),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF232431),
      //   toolbarHeight: 40,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover),
            ),
            child: FutureBuilder(
              future: quizz,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data["results"];
                  if (isLoaded == false) {
                    optionsList =
                        data[currentQuestionIndex]["incorrect_answers"];
                    optionsList
                        .add(data[currentQuestionIndex]["correct_answer"]);
                    optionsList.shuffle();
                    isLoaded = true;
                  }
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 15),
                              width: 110,
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: AppColor.fieldColor),
                              ),
                              child: Text(
                                "Score: ${points}",
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  normalText(
                                      color: Colors.white,
                                      size: 24,
                                      text: "$seconds"),
                                  SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: CircularProgressIndicator(
                                      value: seconds / 30,
                                      valueColor: const AlwaysStoppedAnimation(
                                          Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: size.width - 20,
                          height: size.height - 570,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColor.background,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1.5,
                              color: AppColor.fieldColor,
                            ),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Câu hỏi số ${currentQuestionIndex + 1}',
                                  style: TextStyle(
                                    color: AppColor.fieldColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  "${data[currentQuestionIndex]["question"]}",
                                  style: TextStyle(
                                    color: AppColor.fieldColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            Container(
                              width: size.width - 20,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: optionsList.length,
                                itemBuilder: (context, index) {
                                  var answer = data[currentQuestionIndex]
                                      ["correct_answer"];
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        optionsColor[index] =
                                            AppColor.lightblackbtn;
                                        Future.delayed(Duration(seconds: 1));
                                        if (answer.toString() ==
                                            optionsList[index].toString()) {
                                          optionsColor[index] = AppColor.green;
                                          points = points + 10;
                                        } else {
                                          optionsColor[index] =
                                              AppColor.redbtn2;
                                        }
                                        if (currentQuestionIndex <
                                            data.length - 1) {
                                          Future.delayed(
                                              const Duration(seconds: 1), () {
                                            gotoNextQuestion();
                                          });
                                        } else {
                                          timer!.cancel();
                                          showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              backgroundColor:
                                                  AppColor.background,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              title: Text("Thông báo"),
                                              content: Text(
                                                "Bạn có muốn chơi lại không?",
                                                style: TextStyle(
                                                  color: AppColor.fieldColor,
                                                ),
                                              ),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage(),
                                                        ),
                                                      );
                                                    },
                                                    child: Text("Không")),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              FieldPage(),
                                                        ),
                                                      );
                                                    },
                                                    child: Text("OK")),
                                              ],
                                            ),
                                          );
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 18.5),
                                          alignment: Alignment.center,
                                          width: size.width - 20,
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            color: optionsColor[index],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColor.fieldColor,
                                            ),
                                          ),
                                          child: Text(
                                            '${optionsList[index].toString()}',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: AppColor.fieldColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                      // border: Border.all(
                                      //   width: 1,
                                      //   color: AppColor.fieldColor,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.transcribe),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                          alignment: Alignment.center,
                                        ),
                                        // Text(
                                        //   "",
                                        //   style: TextStyle(
                                        //     color: AppColor.fieldColor,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.w400,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                      // border: Border.all(
                                      //   width: 1,
                                      //   color: AppColor.textColor,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.transcribe),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                        ),
                                        // Text(
                                        //   "",
                                        //   style: TextStyle(
                                        //     color: AppColor.fieldColor,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.w400,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                      // border: Border.all(
                                      //   width: 1,
                                      //   color: AppColor.textColor,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.transcribe),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                        ),
                                        // Text(
                                        //   "",
                                        //   style: TextStyle(
                                        //     color: AppColor.fieldColor,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.w400,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                      // border: Border.all(
                                      //   width: 1,
                                      //   color: AppColor.textColor,
                                      // ),
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.transcribe),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                        ),
                                        // Text(
                                        //   "",
                                        //   style: TextStyle(
                                        //     color: AppColor.fieldColor,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.w400,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation(AppColor.fieldColor),
                          ),
                        ),
                        Text(
                          "Xin vui lòng đợi",
                          style: TextStyle(
                            color: AppColor.fieldColor,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
