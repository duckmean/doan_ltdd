import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';
import '../login/login_screen.dart';
import 'main_page.dart';

class RecordDetail extends StatefulWidget {
  const RecordDetail({super.key});

  @override
  State<RecordDetail> createState() => _RecordDetailState();
}

class _RecordDetailState extends State<RecordDetail> {
  @override
  Widget build(BuildContext context) {
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
              accountName: Text("Phúc Best"),
              accountEmail: Text("phucbestth2002@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 28, 86, 232),
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
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
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
