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
                          'Chơi mới',
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
                          'Lịch sử chơi',
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
                                'Ai là Triệu Phú',
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
                                        'Nhấn chơi mới, chọn lĩnh vực để bắt đầu trò chơi.\n\n'
                                        'Người chơi có 3 lần chọn sai đáp án, tương ứng với 3 mạng, hết 3 mạng sẽ kết thúc trò chơi.\n\n'
                                        'Mỗi lần trả lời câu hỏi là 30 giây, khi hết thời gian mà vẫn chưa trả lời sẽ trừ một mạng.\n\n'
                                        'Mỗi lượt chơi sẽ có 3 sự trợ giúp là 50/50, đổi câu hỏi và mua đáp án, 50/50 và đổi câu hỏi chỉ được sử dụng 1 lần trong mỗi lượt chơi, người chơi có thể mua đáp án thỏa thích (miễn là ví còn dày).\n\n'
                                        'Với mỗi lần mua đáp án, giá tiền sẽ tăng lên gấp đôi, bắt đầu từ 50 QC.\n\n'
                                        'Người chơi chỉnh sửa thông tin của mình trong phần Information, người dùng có thể chỉnh sửa thông tin như tên,mật khẩu,...\n\n'
                                        'Người chơi có thể nạp thẻ và mua VIP trong phần Shop.\n\n'
                                        'Mức VIP sẽ tăng dần từ 1 đến 5, tương ứng với từng phúc lợi của bậc VIP.\n\n'
                                        'Ngoài ra còn các chức năng khác ở trong ngăn kéo (☰) phía góc phải màn hình như bạn bè, kỷ lục,..',
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
                          'Hướng dẫn',
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
                    accountEmail: Text("${this.widget.user!.email}"),
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
                    title: Text("Kỷ lục"),
                    onTap: () {
                      nextScreen(context, RecordDetail(user: this.widget.user));
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
