// ignore_for_file: unused_import

import 'package:doan_ltdd/pages/interface/setting_page.dart';
import 'package:doan_ltdd/pages/interface/updateinfo_page.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'field_page.dart';
import 'package:doan_ltdd/pages/login/login_screen.dart';
import 'record_page.dart';
import 'package:provider/provider.dart';
import 'package:doan_ltdd/provider/sign_in_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        toolbarHeight: 40,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "QuizzCoin: 5000",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.textColor,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 20)),
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.fieldColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                        fit: BoxFit.cover),
                    border: Border.all(
                      width: 3,
                      color: AppColor.bguser,
                    ),
                    borderRadius: BorderRadius.circular(150)),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
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
                          'Bắt đầu',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.redbtn2),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
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
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.bluebtn2),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
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
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.lightblackbtn),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            
            UserAccountsDrawerHeader(
              accountName: Text("${sp.name}"),
              accountEmail: Text("${sp.email}"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: AppColor.fieldColor,
              //   child: Text(
              //     "P",
              //     style: TextStyle(
              //       fontSize: 40.0,
              //       color: AppColor.textColor,
              //     ),
              //   ),
              // ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("${sp.imageUrl}"),
                radius: 50,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Cập nhật thông tin"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateInfomationScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Log out"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Thông báo'),
                    content: Text('Bạn có muốn đăng xuất không'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Không'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => LoginScreen(),
                          //   ),
                          // );
                          sp.userSignOut();
                          nextScreen(context, const LoginScreen());
                        },
                        child: Text('Có'),
                      ),
                    ],
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
