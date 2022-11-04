// ignore_for_file: unused_import

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
      backgroundColor: Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 143, 186),
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_up_outlined,
                    color: Colors.black54,
                    size: 40,
                  ),
                  padding: const EdgeInsets.all(10),
                ),
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
                border: Border.all(width: 3, color: Colors.blue),
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
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
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
                              Color.fromARGB(255, 203, 53, 43),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.green;
                              return Colors.purpleAccent;
                            }),
                          ),
                        ),
                        TextButton(
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
                                Color.fromARGB(255, 34, 113, 178)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Hướng dẫn',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 159, 121, 106)),
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
