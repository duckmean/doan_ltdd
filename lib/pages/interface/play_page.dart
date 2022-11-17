// ignore: unused_import

import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

import 'main_page.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232431),
      appBar: AppBar(
        backgroundColor: Color(0xFF232431),
        toolbarHeight: 40,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                  bottom: 15,
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Đồng hồ đếm ngược
                  //
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Score: 2000",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 20)),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 219, 219, 219)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              height: 170,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 216, 159),
                  image: DecorationImage(
                      image: AssetImage(
                          "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                      fit: BoxFit.cover),
                  border: Border.all(
                    width: 1,
                    color: AppColor.bguser,
                  ),
                  borderRadius: BorderRadius.circular(27)),
            ),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 130,
              child: Text(
                "Cau hoi",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 242, 237, 237),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Đáp án A',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Color(0xFF000000),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                        minimumSize: MaterialStatePropertyAll(Size(320, 40)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Đáp án B',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Color(0xFF000000),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                        minimumSize: MaterialStatePropertyAll(Size(320, 40)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Đáp án C',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Color(0xFF000000),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                        minimumSize: MaterialStatePropertyAll(Size(320, 40)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Đáp án D',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Color(0xFF000000),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                        minimumSize: MaterialStatePropertyAll(Size(320, 40)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
               padding: const EdgeInsets.only(
                top: 7,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 15,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.contrast_outlined),
                            color: AppColor.textColor,
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.fieldColor),
                        minimumSize: MaterialStatePropertyAll(Size(10, 30)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 15,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.groups_outlined),
                            color: AppColor.textColor,
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.fieldColor),
                        //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 15,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.autorenew_rounded),
                            color: AppColor.textColor,
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.fieldColor),
                        //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 15,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.phone_in_talk_outlined),
                              color: AppColor.textColor,
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.fieldColor),
                          //minimumSize: MaterialStatePropertyAll(Size(20, 10)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),                                      
            ],
          ),
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