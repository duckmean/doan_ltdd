import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../Appcolor/appcolor.dart';
import '../../provider/auth_provider.dart';
import '../../provider/sign_in_provider.dart';
import '../../utils/next_screen.dart';
import '../UI/history_page.dart';
import '../UI/main_friends.dart';
import '../UI/main_page.dart';
import '../UI/updateinfo_page.dart';
import '../login/login_screen.dart';
import 'getmore_coins.dart';

class VipUserScreen extends StatefulWidget {
  VipUserScreen({Key? key, required this.user}) : super(key: key);
  User? user;

  @override
  State<VipUserScreen> createState() => _VipUserScreenState();
}

class _VipUserScreenState extends State<VipUserScreen> {
  User? user;
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
                  height: 20,
                ),
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
                SizedBox(
                  height: 50,
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
