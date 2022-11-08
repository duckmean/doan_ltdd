import 'package:doan_ltdd/login_screen.dart';
import 'package:doan_ltdd/main_page.dart';
import 'package:flutter/material.dart';

class RecordDetail extends StatefulWidget {
  const RecordDetail({super.key});

  @override
  State<RecordDetail> createState() => _RecordDetailState();
}

class _RecordDetailState extends State<RecordDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 222, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 153, 230),
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 237, 241, 241),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  new BoxShadow(
                    color: Color.fromARGB(255, 230, 231, 234),
                    offset: new Offset(8.0, 8.0),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "BẢNG XẾP HẠNG",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Raleway',
                  ),
                ),
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
                    color: Color.fromARGB(255, 237, 238, 238),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                        backgroundColor: Colors.lightBlue,
                      ),
                      title: Text("UserName"),
                      subtitle: Text("..."),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 237, 238, 238),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                        backgroundColor: Colors.lightBlue,
                      ),
                      title: Text("UserName"),
                      subtitle: Text("..."),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 237, 238, 238),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                        backgroundColor: Colors.lightBlue,
                      ),
                      title: Text("UserName"),
                      subtitle: Text("..."),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 237, 238, 238),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                        backgroundColor: Colors.lightBlue,
                      ),
                      title: Text("UserName"),
                      subtitle: Text("..."),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 237, 238, 238),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("P"),
                        backgroundColor: Colors.lightBlue,
                      ),
                      title: Text("UserName"),
                      subtitle: Text("..."),
                      trailing: Icon(Icons.more_vert),
                    ),
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
