import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/login/change_password.dart';
import 'package:doan_ltdd/pages/login/forget_password2.dart';
import 'package:doan_ltdd/pages/login/update_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../login/login_screen.dart';
import 'main_page.dart';

class UpdateInfomationScreen extends StatefulWidget {
  const UpdateInfomationScreen({super.key});

  @override
  State<UpdateInfomationScreen> createState() => _UpdateInfomationScreenState();
}

class _UpdateInfomationScreenState extends State<UpdateInfomationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.background,
        toolbarHeight: 40,
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
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Change_password(),
                            ),
                          );
                        },
                        child: Text(
                          'Đổi mật khẩu',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.textColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.fieldColor),
                          minimumSize: MaterialStatePropertyAll(Size(250, 40)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          overlayColor:
                              MaterialStatePropertyAll(AppColor.bluebtn2),
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
                              builder: (context) => UpdateInfomation(),
                            ),
                          );
                        },
                        child: Text(
                          'Cập nhật thông tin',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.textColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.fieldColor),
                          minimumSize: MaterialStatePropertyAll(Size(250, 40)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          overlayColor:
                              MaterialStatePropertyAll(AppColor.bluebtn2),
                        ),
                      ),
                    ),
                  ],
                ),
              )
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
              arrowColor: AppColor.background,
              accountName: Text("Phúc Best"),
              accountEmail: Text("phucbestth2002@gmail.com"),
              currentAccountPicture: CircleAvatar(
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
