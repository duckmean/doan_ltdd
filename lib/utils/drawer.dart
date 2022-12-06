import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/UI/main_page.dart';
import '../pages/UI/updateinfo_page.dart';
import '../pages/login/login_screen.dart';
import '../pages/payment/getmore_coins.dart';
import '../provider/auth_provider.dart';
import '../provider/sign_in_provider.dart';

endDrawer() {
  Drawer(
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
                accountName: Text(""),
                accountEmail: Text(""),
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
                  backgroundImage: NetworkImage(""),
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
                      builder: (context) => MainPage(),
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
                            // if (sp.checkUserExists() == true) {
                            //   sp.userSignOut();
                            // } else {
                            // Navigator.pushNamedAndRemoveUntil(
                            //     context, 'Login', (route) => false);
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                                (route) => false);
                            // }
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
  );
}
