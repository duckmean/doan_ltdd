// ignore: unused_import

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/UI/field_page.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/result.dart';
import 'package:doan_ltdd/provider/global_service.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:doan_ltdd/utils/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:doan_ltdd/provider/quiz.dart';
import '../login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'main_page.dart';
import 'dart:async';
import 'package:doan_ltdd/provider/time_textstyle.dart';

class PlayPage extends StatefulWidget {
  PlayPage({Key? key, required this.category, required this.user})
      : super(key: key);
  int category;
  User? user;
  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  int seconds = 30;
  Timer? timer;
  var currentQuestionIndex = 0;
  late Future quizz;
  int points = 0;
  int i = 1;
  int count1 = 1; //50/50
  int count2 = 1; //doi cau hoi
  int count3 = 1; //mua dap an
  int count4 = 1; //goi dien thoai

  String hearts = "3";
  int heart = 3;
  String indexanswer = '';
  int indexcorrect = 0;
  int coinuser = 0;
  int coinbuy = 50;

  int questionindex = 0;

  @override
  void initState() {
    super.initState();
    quizz = getQuiz(this.widget.category);
    this.widget.user != null
        ? coinuser = this.widget.user!.quizzcoin
        : coinuser = 500;
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

  bool canceltime = false;
  startTimer() async {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (seconds < 1) {
            timer.cancel();
            heart--;
            gotoNextQuestion();
          } else {
            seconds--;
          }
        });
      },
    );
  }

  gotoNextQuestion() {
    isLoaded = false;
    currentQuestionIndex++;
    questionindex = currentQuestionIndex;
    resetColors();
    timer!.cancel();
    seconds = 30;
    setState(() {
      if (heart <= 0) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => Result(
                points: points,
                user: this.widget.user,
              ),
            ),
            (route) => false);
      }
    });
    // setState(
    //   () {
    //     if (heart <= 0) {
    //       nextScreenRemoveUntil(context, Result(points: points));
    //     }
    //   },
    // );
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                  indexanswer = data[currentQuestionIndex]["correct_answer"];
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
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 15),
                              width: 170,
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: AppColor.fieldColor),
                              ),
                              child: Text(
                                "QuizzCoin: ${coinuser} ",
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                "Điểm: ${points} ",
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 50,
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
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: AppColor.fieldColor),
                              ),
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                label: Text(
                                  '${heart}',
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.background,
                                ),
                              ),
                            ),
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
                                  'Câu hỏi số ${questionindex + 1}',
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
                                      setState(
                                        () {
                                          // optionsColor[index] =
                                          //     AppColor.lightblackbtn;
                                          // Future.delayed(Duration(seconds: 1));
                                          if (answer.toString() ==
                                              optionsList[index].toString()) {
                                            optionsColor[index] =
                                                AppColor.green;
                                            points = points + 10;
                                          } else {
                                            optionsColor[index] =
                                                AppColor.redbtn2;
                                            for (int i = 0;
                                                i < optionsList.length;
                                                i++) {
                                              if (optionsList[i].toString() ==
                                                  indexanswer.toString()) {
                                                indexcorrect = i;
                                                break;
                                              }
                                            }
                                            optionsColor[indexcorrect] =
                                                AppColor.green;
                                            heart--;
                                          }
                                          if (currentQuestionIndex <
                                              data.length - 1) {
                                            Future.delayed(
                                                const Duration(seconds: 1), () {
                                              gotoNextQuestion();
                                            });
                                          } else {
                                            timer!.cancel();
                                            Navigator.of(context)
                                                .pushAndRemoveUntil(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Result(
                                                        points: points,
                                                        user: this.widget.user,
                                                      ),
                                                    ),
                                                    (route) => false);
                                          }
                                        },
                                      );
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
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          if (count1 == 1) {
                                            for (int i = 0;
                                                i < optionsList.length;
                                                i++) {
                                              if (optionsList[i].toString() ==
                                                  indexanswer.toString()) {
                                                indexcorrect = i;
                                                break;
                                              }
                                            }
                                            if (indexcorrect == 0 ||
                                                indexcorrect == 1) {
                                              optionsList.removeAt(2);
                                              optionsList.removeAt(2);
                                              // optionsList.add('');
                                              // optionsList.add('');
                                            } else {
                                              optionsList.removeAt(0);
                                              optionsList.removeAt(0);
                                              // optionsList.add('');
                                              // optionsList.add('');
                                            }
                                            count1 = 0;
                                            //errorSnackbar(context, "Ban ")
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Bạn đã dùng hết lượt',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                duration:
                                                    (Duration(seconds: 1)),
                                              ),
                                            );
                                          }
                                        });
                                      },
                                      child: Text("50/50"),
                                      style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                AppColor.background),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 45,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            if (count2 == 1) {
                                              questionindex--;
                                              gotoNextQuestion();
                                              count2 = 0;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Bạn đã dùng hết lượt',
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  duration:
                                                      (Duration(seconds: 1)),
                                                ),
                                              );
                                            }
                                          },
                                          icon: Icon(Icons.autorenew),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  // Container(
                                  //   width: 70,
                                  //   height: 70,
                                  //   decoration: BoxDecoration(
                                  //     color: AppColor.background,
                                  //     borderRadius: BorderRadius.circular(50),
                                  //   ),
                                  //   child: Column(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.center,
                                  //     children: [
                                  //       IconButton(
                                  //         onPressed: () {},
                                  //         icon: Icon(Icons.phone),
                                  //         color: AppColor.fieldColor,
                                  //         iconSize: 26,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: AppColor.background,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (coinuser >= coinbuy) {
                                                coinuser = coinuser - coinbuy;
                                                coinbuy *= 2;
                                                this.widget.user!.quizzcoin =
                                                    coinuser;
                                                for (int i = 0;
                                                    i < optionsList.length;
                                                    i++) {
                                                  if (optionsList[i]
                                                          .toString() ==
                                                      indexanswer.toString()) {
                                                    indexcorrect = i;
                                                    break;
                                                  }
                                                }
                                                optionsColor[indexcorrect] =
                                                    AppColor.yellow1;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Quizzcoin của bạn không đủ để mua đáp án',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                );
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.shopping_cart),
                                          color: AppColor.fieldColor,
                                          iconSize: 26,
                                        ),
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
