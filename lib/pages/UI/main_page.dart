import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/pages/payment/shop.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';

class MainPageScreen extends StatefulWidget {
  MainPageScreen({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  int selectedIndex = 0;
  void onTapSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void initState() {
    lsScreen = [
      HomePage(
        user: this.widget.user,
      ),
      ShopSreen(user: this.widget.user),
      UpdateInfomationScreen(user: this.widget.user),
    ];
  }

  List<Widget> lsScreen = [
    // HomePage(),
    // ShopSreen(),
    // UpdateInfomationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.background,
        selectedItemColor: AppColor.fieldColor,
        unselectedItemColor: AppColor.lightblackbtn,
        iconSize: 27,
        currentIndex: selectedIndex,
        onTap: onTapSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Information',
          ),
        ],
      ),
      body: lsScreen[selectedIndex],
    );
  }
}
