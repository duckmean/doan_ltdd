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
      backgroundColor: Color.fromARGB(255, 201, 222, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 153, 230),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info_outlined,
                  color: Colors.black54,
                  size: 40,
                )),
            Row(
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.volume_up_outlined,
                //     color: Colors.black54,
                //     size: 40,
                //   ),
                //   padding: const EdgeInsets.all(10),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.power_settings_new,
                    color: Colors.black54,
                    size: 40,
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
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FieldPage(),
                              ),
                            );
                          },
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'Chơi ngay',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(244, 198, 53, 43),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            minimumSize: MaterialStatePropertyAll(Size(50, 52)),
                            overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 227, 49, 36),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'Đăng nhập',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 30, 117, 210),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            minimumSize: MaterialStatePropertyAll(Size(50, 52)),
                            overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 16, 146, 222),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Hướng dẫn chơi'),
                            content: Text('Ae 3TL'),
                            scrollable: true,
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Hướng dẫn',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 188, 134, 113)),
                      minimumSize: MaterialStatePropertyAll(Size(340, 35)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
