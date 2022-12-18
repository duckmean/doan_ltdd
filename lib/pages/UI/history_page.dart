import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Appcolor/appcolor.dart';
import '../../provider/sign_in_provider.dart';
import '../../utils/next_screen.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'main_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                        "LỊCH SỬ",
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Raleway',
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
    );
  }
}
