// ignore_for_file: unused_import

import 'package:doan_ltdd/field_page.dart';
import 'package:doan_ltdd/getmore_coins.dart';
import 'package:doan_ltdd/play_page.dart';
import 'package:doan_ltdd/record_page.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 222, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 153, 230),
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //padding: const EdgeInsets.all(5),
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.power_settings_new,
                      color: Colors.black,
                      size: 35,
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "QuizzCoin: 5000",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 253, 253)),
                    ),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 20)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 33, 148, 220)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   // ignore: sort_child_properties_last
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: const Icon(
                  //       Icons.shopping_cart,
                  //       color: Colors.black,
                  //     ),
                  //     iconSize: 34,
                  //   ),
                  //   style: ButtonStyle(
                  //       backgroundColor: const MaterialStatePropertyAll(
                  //           Color.fromARGB(255, 210, 210, 210)),
                  //       minimumSize: MaterialStateProperty.all(Size(70, 20)),
                  //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(50)))),
                  // ),
                  // Container(
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       // TextButton(
                  //       //   onPressed: (){

                  //       //   },
                  //       //   child: Text(
                  //       //     "Đổi tài khoản",
                  //       //     style: TextStyle(
                  //       //       fontSize: 17,
                  //       //       color: Colors.black
                  //       //     ),
                  //       //   ),
                  //       //   style: ButtonStyle(
                  //       //     minimumSize: MaterialStateProperty.all(Size(130, 20)),
                  //       //     backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 219, 219, 219)),
                  //       //     shape: MaterialStateProperty.all(
                  //       //       RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(50)
                  //       //       )
                  //       //     )
                  //       //   ),
                  //       // ),
                  //       // IconButton(
                  //       //   onPressed: () {},
                  //       //   icon: const Icon(
                  //       //     Icons.volume_up_outlined,
                  //       //     color: Colors.black,
                  //       //     size: 35,
                  //       //   ),
                  //       //   padding:const EdgeInsets.all(10),
                  //       // ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
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
                  borderRadius: BorderRadius.circular(150)),
            ),
            Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
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
                          'Bắt dầu',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 223, 85, 85)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetMoreCoins(),
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Nhận QuizzCoin',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 40, 189, 212)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecordPage(),
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Kỷ lục',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 34, 142, 73)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Phúc Best"),
              accountEmail: Text("phucbestth2002@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 28, 86, 232),
                child: Text(
                  "P",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shoping"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Log out"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
