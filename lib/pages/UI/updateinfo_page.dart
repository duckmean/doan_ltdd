import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/login/change_password.dart';
import 'package:doan_ltdd/pages/login/forget_password2.dart';
import 'package:doan_ltdd/pages/login/update_info.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../provider/auth_provider.dart';
import '../../provider/sign_in_provider.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import '../payment/shop.dart';
import '../payment/vip_user.dart';
import 'history_page.dart';
import 'main_friends.dart';
import 'main_page.dart';

class UpdateInfomationScreen extends StatefulWidget {
  UpdateInfomationScreen({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<UpdateInfomationScreen> createState() => _UpdateInfomationScreenState();
}

class _UpdateInfomationScreenState extends State<UpdateInfomationScreen> {
  User? user;
  @override
  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();
    final sg = context.watch<AuthProvider>();
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
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.background,
                    border: Border.all(
                      width: 0.1,
                      color: AppColor.fieldColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              GetMoreCoins(user: this.widget.user),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(170, 40)),
                      // backgroundColor:
                      //     MaterialStatePropertyAll(AppColor.background),
                      // shape: MaterialStateProperty.all(
                      //   RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(30)),
                      // ),
                    ),
                    child: Text(
                      this.widget.user!.quizzcoin != null
                          ? "QuizzCoin: ${this.widget.user!.quizzcoin}"
                          : "QuizzCoin: 0",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.fieldColor,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logo.jpg"),
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
                          nextScreen(
                            context,
                            Change_password(
                              user: this.widget.user,
                            ),
                          );
                        },
                        child: Text(
                          'Đổi Mật Khẩu',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.fieldColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.bluebtn2),
                          minimumSize: MaterialStatePropertyAll(Size(250, 40)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          overlayColor:
                              MaterialStatePropertyAll(AppColor.lightblue1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          nextScreen(
                            context,
                            UpdateInfomation(
                              user: this.widget.user,
                            ),
                          );
                        },
                        child: Text(
                          'Đổi Họ Tên',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.fieldColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.redbtn2),
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
        child: Consumer<AuthProvider>(
          builder: (context, auth, child) {
            if (!auth.authenticated) {
              return ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.login),
                    title: Text("Login"),
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
              );
            } else {
              return ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("${this.widget.user!.name}"),
                    accountEmail: Text("${this.widget.user!.email}"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      //backgroundImage: NetworkImage("${sp.imageUrl}"),
                      radius: 50,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.shopping_cart),
                  //   title: Text("Nạp QuizzCoin"),
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) =>
                  //             GetMoreCoins(user: this.widget.user),
                  //       ),
                  //     );
                  //   },
                  // ),
                  ListTile(
                    leading: Icon(Icons.groups),
                    title: Text("Bạn bè"),
                    onTap: () {
                      nextScreen(context, MainFriends());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.bookmark_outlined),
                    title: Text("Lịch sử"),
                    onTap: () {
                      nextScreen(context, HistoryPage());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: Text("Sign out"),
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
                                if (sp.checkUserExists() == true) {
                                  sp.userSignOut();
                                } else {
                                  // Navigator.pushNamedAndRemoveUntil(
                                  //     context, 'Login', (route) => false);
                                  nextScreenRemoveUntil(context, LoginScreen());
                                }
                              },
                              child: Text('Có'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
