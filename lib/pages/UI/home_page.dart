// ignore_for_file: unused_import

import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/pages/payment/vip_user.dart';
import 'package:doan_ltdd/provider/auth_provider.dart';

import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'field_page.dart';
import 'package:doan_ltdd/pages/login/login_screen.dart';
import 'record_page.dart';
import 'package:provider/provider.dart';
import 'package:doan_ltdd/provider/sign_in_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getData() async {
    final sp = context.read<AuthProvider>();
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
    final lg = context.watch<AuthProvider>();
    //final sg = context.watch<AuthProvider>();

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                              builder: (context) => GetMoreCoins(),
                            ),
                          );
                        },
                        child: Text(
                          "QuizzCoin: 5000",
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColor.fieldColor,
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(120, 40)),
                          // backgroundColor:
                          //     MaterialStatePropertyAll(AppColor.background),
                          // shape: MaterialStateProperty.all(
                          //   RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(30)),
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
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
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),
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
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: AppColor.background,
                              title: Text(
                                'Ai là Triệu Phú',
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 20,
                                ),
                              ),
                              //titlePadding: EdgeInsets.only(left: 20, top: 10),
                              content: Container(
                                //color: AppColor.background,
                                width: 850,
                                height: 800,
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      child: Text(
                                        'Hướng dẫn',
                                        style: TextStyle(
                                          color: AppColor.fieldColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Hướng dẫn',
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
                      accountName: Text("${lg.name}"),
                      accountEmail: Text("${lg.email}"),
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
                      )),
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
