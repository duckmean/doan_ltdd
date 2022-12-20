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
import 'main_page.dart';

class UpdateInfomationScreen extends StatefulWidget {
  const UpdateInfomationScreen({super.key});
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
                          nextScreen(context, Change_password());
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
                          nextScreen(context, UpdateInfomation());
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
                      backgroundColor: AppColor.bguser,
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
                          builder: (context) => HomePage(
                            user: user,
                          ),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Nạp QuizzCoin"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetMoreCoins(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.diamond),
                    title: Text("Mua VIP"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VipUserScreen(),
                        ),
                      );
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.contacts),
                  //   title: Text("Cập nhật thông tin"),
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => UpdateInfomationScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
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
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                      (route) => false);
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
