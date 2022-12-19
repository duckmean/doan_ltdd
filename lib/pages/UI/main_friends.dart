import 'package:doan_ltdd/pages/UI/friends_page.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/pages/payment/shop.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';

class MainFriends extends StatefulWidget {
  const MainFriends({super.key});

  @override
  State<MainFriends> createState() => _MainFriendsState();
}

class _MainFriendsState extends State<MainFriends> {
  int selectedIndex = 0;
  void onTapSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> lsScreen = [
    FriendsPage(title: 'Mọi Người'),
    FriendsPage(title: 'Bạn Bè')
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
            icon: Icon(Icons.group_add),
            label: 'Mọi Người',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Bạn Bè',
          ),
        ],
      ),
      body: lsScreen[selectedIndex],
    );
  }
}
