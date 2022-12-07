import 'package:doan_ltdd/pages/payment/getmore_coins.dart';
import 'package:doan_ltdd/pages/payment/vip_user.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/auth_provider.dart';
import '../../provider/sign_in_provider.dart';
import '../UI/home_page.dart';
import '../UI/updateinfo_page.dart';
import '../login/login_screen.dart';

class ShopSreen extends StatefulWidget {
  const ShopSreen({super.key});

  @override
  State<ShopSreen> createState() => _ShopSreenState();
}

class _ShopSreenState extends State<ShopSreen> {
  int selectedIndex = 0;
  void onTapSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> lsScreen = [
    HomePage(),
    ShopSreen(),
    UpdateInfomationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();
    final sg = context.watch<AuthProvider>();
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 34,
                ),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logo.jpg'),
                        fit: BoxFit.cover),
                    border: Border.all(
                      width: 3,
                      color: AppColor.bguser,
                    ),
                    borderRadius: BorderRadius.circular(150)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        nextScreen(context, VipUserScreen());
                      },
                      child: Text(
                        'Mua VIP',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.redbtn2),
                        minimumSize: MaterialStatePropertyAll(Size(350, 50)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        nextScreen(context, GetMoreCoins());
                      },
                      child: Text(
                        'Nạp QuizzCoin',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.bluebtn2),
                        minimumSize: MaterialStatePropertyAll(Size(350, 50)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
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
                          builder: (context) => HomePage(),
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
