// ignore_for_file: unused_import

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:doan_ltdd/Appcolor/appcolor.dart';
import '../login/login_screen.dart';
import 'field_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.power_settings_new,
                    color: Color(0xFFFFFFFF),
                    size: 38,
                  ),
                  padding: const EdgeInsets.all(10),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 216, 159),
                image: DecorationImage(
                    image: AssetImage(
                        "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                    fit: BoxFit.cover),
                border: Border.all(
                  width: 3,
                  color: AppColor.fieldColor,
                ),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FieldPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Chơi ngay",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.redbnt1),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFFD46D32)),
                        minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.bluebtn1),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFFD73232)),
                        minimumSize: MaterialStatePropertyAll(Size(300, 50)),
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
    );
  }
}
