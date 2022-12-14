// ignore_for_file: unused_import

import 'package:doan_ltdd/pages/UI/friends_page.dart';
import 'package:doan_ltdd/pages/UI/history_page.dart';
import 'package:doan_ltdd/pages/UI/main_friends.dart';
import 'package:doan_ltdd/pages/UI/record_detail.dart';
import 'package:doan_ltdd/pages/UI/updateinfo_page.dart';
import 'package:doan_ltdd/pages/payment/vip_user.dart';
import 'package:doan_ltdd/provider/auth_provider.dart';
import 'package:doan_ltdd/provider/friends.dart';
import 'package:doan_ltdd/provider/user_object.dart';

import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';
import '../login/login_screen.dart';
import '../payment/getmore_coins.dart';
import 'field_page.dart';
import 'package:doan_ltdd/pages/login/login_screen.dart';
import 'record_page.dart';
import 'package:provider/provider.dart';
import 'package:doan_ltdd/provider/sign_in_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getData() async {
    final sp = context.read<AuthProvider>();
    sp.getDataFromSharedPreferences();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Friends friendsService = Friends();
  @override
  Widget build(BuildContext context) {
    //var quizzcoin = this.widget.user!.quizzcoin;
    final sp = context.watch<SignInProvider>();
    final lg = context.read<AuthProvider>();
    //final sg = context.watch<AuthProvider>();

    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        toolbarHeight: 40,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                  ],
                ),
              ),
              SizedBox(
                height: 25,
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
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FieldPage(user: this.widget.user),
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Ch??i m???i',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.redbtn2),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HistoryPage(),
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'L???ch s??? ch??i',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.bluebtn2),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: AppColor.background,
                              title: Text(
                                'Ai l?? Tri???u Ph??',
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 20,
                                ),
                              ),
                              //titlePadding: EdgeInsets.only(left: 20, top: 10),
                              content: Container(
                                //color: AppColor.background,
                                width: 900,
                                height: 800,
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      child: Text(
                                        'Nh???n ch??i m???i, ch???n l??nh v???c ????? b???t ?????u tr?? ch??i.\n\n'
                                        'Ng?????i ch??i c?? 3 l???n ch???n sai ????p ??n, t????ng ???ng v???i 3 m???ng, h???t 3 m???ng s??? k???t th??c tr?? ch??i.\n\n'
                                        'M???i l???n tr??? l???i c??u h???i l?? 30 gi??y, khi h???t th???i gian m?? v???n ch??a tr??? l???i s??? tr??? m???t m???ng.\n\n'
                                        'M???i l?????t ch??i s??? c?? 3 s??? tr??? gi??p l?? 50/50, ?????i c??u h???i v?? mua ????p ??n, 50/50 v?? ?????i c??u h???i ch??? ???????c s??? d???ng 1 l???n trong m???i l?????t ch??i, ng?????i ch??i c?? th??? mua ????p ??n th???a th??ch (mi???n l?? v?? c??n d??y).\n\n'
                                        'V???i m???i l???n mua ????p ??n, gi?? ti???n s??? t??ng l??n g???p ????i, b???t ?????u t??? 50 QC.\n\n'
                                        'Ng?????i ch??i ch???nh s???a th??ng tin c???a m??nh trong ph???n Information, ng?????i d??ng c?? th??? ch???nh s???a th??ng tin nh?? t??n,m???t kh???u,...\n\n'
                                        'Ng?????i ch??i c?? th??? n???p th??? v?? mua VIP trong ph???n Shop.\n\n'
                                        'M???c VIP s??? t??ng d???n t??? 1 ?????n 5, t????ng ???ng v???i t???ng ph??c l???i c???a b???c VIP.\n\n'
                                        'Ngo??i ra c??n c??c ch???c n??ng kh??c ??? trong ng??n k??o (???) ph??a g??c ph???i m??n h??nh nh?? b???n b??, k??? l???c,..',
                                        style: TextStyle(
                                          color: AppColor.fieldColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'OK',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'H?????ng d???n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColor.lightblackbtn),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(270, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
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
                      nextScreenRemoveUntil(context, LoginScreen());
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
                    accountEmail: Text(
                        "${this.widget.user!.email} \nVIP: ${this.widget.user!.vip}"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/avt.png"),
                      radius: 50,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.shopping_cart),
                  //   title: Text("N???p QuizzCoin"),
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
                    title: Text("B???n b??"),
                    onTap: () {
                      nextScreen(context, MainFriends());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.bookmark_outlined),
                    title: Text("K??? l???c"),
                    onTap: () {
                      nextScreen(context, RecordDetail(user: this.widget.user));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: Text("????ng xu???t"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Th??ng b??o'),
                          content: Text('B???n c?? mu???n ????ng xu???t kh??ng'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Kh??ng'),
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
                              child: Text('C??'),
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
