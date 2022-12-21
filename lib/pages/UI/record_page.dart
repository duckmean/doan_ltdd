import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/provider/user_object.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/auth_provider.dart';
import '../../provider/sign_in_provider.dart';
import '../../utils/next_screen.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'history_page.dart';
import 'main_friends.dart';
import 'main_page.dart';
import 'play_page.dart';
import 'record_detail.dart';

class RecordPage extends StatefulWidget {
  RecordPage({Key? key, required this.user}) : super(key: key);
  User? user;

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  User? user;
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
                padding: EdgeInsets.only(
                  bottom: 8,
                ),
                width: 300,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFEDF1F1),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xFFF3F3F3),
                      offset: new Offset(8.0, 8.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "BẢNG XẾP HẠNG",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "Chọn lĩnh vực bạn muốn xem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        RecordDetail(user: this.widget.user),
                                  ),
                                );
                              },
                              child: const Text(
                                'Khoa học',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColor.lightblue1),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(100, 100)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
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
                                    builder: (context) =>
                                        RecordDetail(user: this.widget.user),
                                  ),
                                );
                              },
                              child: const Text(
                                'Thể thao',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(AppColor.redbtn2),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(100, 100)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        RecordDetail(user: this.widget.user),
                                  ),
                                );
                              },
                              child: const Text(
                                'Pháp luật',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(AppColor.green),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(100, 100)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
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
                                    builder: (context) =>
                                        RecordDetail(user: this.widget.user),
                                  ),
                                );
                              },
                              child: const Text(
                                'Địa lý',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColor.dartyellow),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(100, 100)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
