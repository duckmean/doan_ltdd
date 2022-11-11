// ignore_for_file: unused_import

import 'package:doan_ltdd/field_page.dart';
import 'package:doan_ltdd/login_screen.dart';
import 'package:doan_ltdd/main_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232431),
      appBar: AppBar(
        backgroundColor: Color(0xFF232431),
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
                    width: 3, color: Color.fromARGB(255, 231, 231, 231)),
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
                            MaterialStatePropertyAll(Color(0xFFB12A2A)),
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
                            MaterialStatePropertyAll(Color(0xFF287BAA)),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFFE04E4E)),
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
