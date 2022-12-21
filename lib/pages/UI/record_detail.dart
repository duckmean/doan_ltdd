import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Appcolor/appcolor.dart';
import '../../provider/sign_in_provider.dart';
import '../../utils/next_screen.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'main_page.dart';

class RecordDetail extends StatefulWidget {
  RecordDetail({Key? key, required this.user}) : super(key: key);
  User? user;

  @override
  State<RecordDetail> createState() => _RecordDetailState();
}

class _RecordDetailState extends State<RecordDetail> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 0,
              ),
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
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xFFE6E7EA),
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
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Center(
                      child: Text(
                        "Lĩnh vực",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.fieldColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Time:1:09:45",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Score:340",
                              style: TextStyle(
                                color: AppColor.fieldColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: AppColor.fieldColor,
                      ),
                    ),
                    color: AppColor.bguser,
                  ),
                ],
              ),
            ),
          ],
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
                    builder: (context) => GetMoreCoins(user: this.widget.user),
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
                    builder: (context) =>
                        UpdateInfomationScreen(user: this.widget.user),
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
