import 'package:doan_ltdd/pages/UI/field_page.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/sign_in_provider.dart';
import '../../utils/next_screen.dart';
import '../login/login_screen.dart';
import '../UI/play_page.dart';

class Result extends StatefulWidget {
  const Result({super.key});
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        toolbarHeight: 40,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Container(
                  //   padding: EdgeInsets.only(
                  //     bottom: 8,
                  //   ),
                  //   width: 300,
                  //   height: 90,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Color(0xFFEDF1F1),
                  //       width: 1.5,
                  //     ),
                  //     borderRadius: BorderRadius.circular(10),
                  //     boxShadow: [
                  //       new BoxShadow(
                  //         color: Color(0xFFE6E7EA),
                  //         offset: new Offset(8.0, 8.0),
                  //       ),
                  //     ],
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       "BẢNG XẾP HẠNG",
                  //       style: TextStyle(
                  //         fontSize: 23,
                  //         fontFamily: 'Raleway',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/cupwc1.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'CHÚC MỪNG BẠN ĐÃ ĐẠT ĐƯỢC',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 15),
                    width: 110,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColor.background,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: AppColor.fieldColor),
                    ),
                    child: Text(
                      "Score: ",
                      style: TextStyle(
                        color: AppColor.fieldColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                                (route) => false);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.home),
                              Text(
                                "Trang Chủ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColor.redbnt1),
                            overlayColor:
                                MaterialStatePropertyAll(Color(0xFFD46D32)),
                            minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => FieldPage(),
                                ),
                                (route) => false);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow),
                              Text(
                                " Chơi Tiếp ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColor.redbnt1),
                            overlayColor:
                                MaterialStatePropertyAll(Color(0xFFD46D32)),
                            minimumSize: MaterialStatePropertyAll(Size(50, 50)),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
