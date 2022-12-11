import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../UI/main_page.dart';
import 'package:provider/provider.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/auth_provider.dart';
import '../../provider/sign_in_provider.dart';

import '../UI/updateinfo_page.dart';
import '../login/login_screen.dart';
import 'getmore_coins.dart';

class VipUserScreen extends StatefulWidget {
  const VipUserScreen({super.key});

  @override
  State<VipUserScreen> createState() => _VipUserScreenState();
}

class _VipUserScreenState extends State<VipUserScreen> {
  @override
  Widget build(BuildContext context) {
    final sp = context.watch<SignInProvider>();
    final sg = context.watch<AuthProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            //height: 500,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
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
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  //padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.diamond),
                    label: Text('Mua VIP 1'),
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(350, 40)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.bluebtn2),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  //padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.diamond),
                    label: Text('Mua VIP 2'),
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(350, 40)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.bluebtn2),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  //padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.diamond),
                    label: Text('Mua VIP 3'),
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(350, 40)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.bluebtn2),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  //padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.diamond),
                    label: Text('Mua VIP 4'),
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(350, 40)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.bluebtn2),
                    ),
                  ),
                ),
              ],
            ),
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
                  // ListTile(
                  //   leading: Icon(Icons.diamond),
                  //   title: Text("Mua VIP"),
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => VipUserScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
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
