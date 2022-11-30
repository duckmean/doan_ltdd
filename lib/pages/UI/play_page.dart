// ignore: unused_import

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

import 'main_page.dart';
import 'dart:async';
import 'package:doan_ltdd/provider/time_textstyle.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  int seconds = 30;
  Timer? timer;
  var currentQuestionIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF232431),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF232431),
      //   toolbarHeight: 40,
      //   elevation: 0,
      // ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 20,
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Score: 2000",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 20)),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 219, 219, 219)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 18,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              normalText(
                                  color: AppColor.fieldColor,
                                  size: 22,
                                  text: "$seconds"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: seconds / 30,
                                  valueColor: AlwaysStoppedAnimation(
                                      AppColor.fieldColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    width: 320,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 216, 159),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: AppColor.fieldColor,
                        //     offset: Offset(2.0, 2.0),
                        //     blurRadius: 2.0,
                        //     spreadRadius: 1.0,
                        //   ),
                        // ],
                        image: DecorationImage(
                            image: AssetImage(
                                "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                            fit: BoxFit.cover),
                        border: Border.all(
                          width: 1,
                          color: AppColor.bguser,
                        ),
                        borderRadius: BorderRadius.circular(27)),
                  ),
                  Container(
                    // padding: EdgeInsets.only(
                    //   top: 10,
                    //   bottom: 10,
                    // ),
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 30,
                    ),
                    alignment: Alignment.center,
                    width: 300,
                    height: 130,
                    decoration: BoxDecoration(
                        color: AppColor.background,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          new BoxShadow(
                            color: AppColor.fieldColor,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          )
                        ]),

                    //color: AppColor.background,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 5,
                          ),
                          child: Text(
                            "Câu hỏi ...",
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColor.fieldColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 40,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Nội dung câu hỏi",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColor.fieldColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              //chuyển đáp án mới show
                              // showDialog(
                              //   context: context,
                              //   builder: (context) => AlertDialog(
                              //     content: Text(
                              //         'Bạn có chắc muốn chọn đáp án này không?'),
                              //     actions: [
                              //       TextButton(
                              //         onPressed: () {},
                              //         child: Text('OK'),
                              //       ),
                              //       TextButton(
                              //         onPressed: () {
                              //           Navigator.pop(context);
                              //         },
                              //         child: Text('Cancel'),
                              //       ),
                              //     ],
                              //   ),
                              // );
                            },
                            child: Text(
                              'Đáp án A',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: AppColor.fieldColor,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.background),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(320, 40)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // showDialog(
                              //   context: context,
                              //   builder: (context) => AlertDialog(
                              //     content: Text(
                              //         'Bạn có chắc muốn chọn đáp án này không?'),
                              //     actions: [
                              //       TextButton(
                              //         onPressed: () {},
                              //         child: Text('OK'),
                              //       ),
                              //       TextButton(
                              //         onPressed: () {
                              //           Navigator.pop(context);
                              //         },
                              //         child: Text('Cancel'),
                              //       ),
                              //     ],
                              //   ),
                              // );
                            },
                            child: Text(
                              'Đáp án B',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: AppColor.fieldColor,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.background),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(320, 40)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // showDialog(
                              //   context: context,
                              //   builder: (context) => AlertDialog(
                              //     content: Text(
                              //         'Bạn có chắc muốn chọn đáp án này không?'),
                              //     actions: [
                              //       TextButton(
                              //         onPressed: () {},
                              //         child: Text('OK'),
                              //       ),
                              //       TextButton(
                              //         onPressed: () {
                              //           Navigator.pop(context);
                              //         },
                              //         child: Text('Cancel'),
                              //       ),
                              //     ],
                              //   ),
                              // );
                            },
                            child: Text(
                              'Đáp án C',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: AppColor.fieldColor,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.background),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(320, 40)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // showDialog(
                              //   context: context,
                              //   builder: (context) => AlertDialog(
                              //     content: Text(
                              //         'Bạn có chắc muốn chọn đáp án này không?'),
                              //     actions: [
                              //       TextButton(
                              //         onPressed: () {},
                              //         child: Text('OK'),
                              //       ),
                              //       TextButton(
                              //         onPressed: () {
                              //           Navigator.pop(context);
                              //         },
                              //         child: Text('Cancel'),
                              //       ),
                              //     ],
                              //   ),
                              // );
                            },
                            child: Text(
                              'Đáp án D',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: AppColor.fieldColor,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.background),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(320, 40)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 15,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.contrast_outlined),
                                  color: AppColor.textColor,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.fieldColor),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(10, 30)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 15,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.groups_outlined),
                                  color: AppColor.textColor,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.fieldColor),
                              //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 15,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.autorenew_rounded),
                                  color: AppColor.textColor,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.fieldColor),
                              //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 15,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.phone_in_talk_outlined),
                                  color: AppColor.textColor,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColor.fieldColor),
                              //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
