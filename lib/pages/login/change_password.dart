import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/main_page.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';

class Change_password extends StatefulWidget {
  const Change_password({super.key});
  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: Container(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 111, 190, 255),
              Color.fromARGB(255, 111, 190, 255),
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Đổi mật khẩu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập Mật Khẩu Cũ',
                            labelText: 'Nhập Mật Khẩu Cũ',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập Mật Khẩu Mới',
                            labelText: 'Nhập Mật Khẩu Mới',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Nhập Lại Mật Khẩu Mới',
                            labelText: 'Nhập Lại Mật Khẩu Mới',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(right: 5),
                      //   alignment: Alignment.bottomRight,
                      //   child: FloatingActionButton(
                      //     onPressed: () {
                      //       nextScreen(context, HomePage());
                      //     },
                      //     backgroundColor: AppColor.bluebtn2,
                      //     child: Icon(Icons.reply_outlined),
                      //   ),
                      // ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () => nextScreen(
                            context,
                            HomePage(),
                          ), //bo sung 2
                          child: const Text('Xác nhận',
                              style: TextStyle(fontSize: 20)),
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(AppColor.redbtn2),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(150, 60)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
