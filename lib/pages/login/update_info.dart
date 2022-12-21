import 'package:doan_ltdd/pages/UI/home_page.dart';
import 'package:doan_ltdd/pages/UI/main_page.dart';
import 'package:doan_ltdd/provider/user_object.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';
import '../UI/updateinfo_page.dart';
import '../payment/shop.dart';
import 'login_screen.dart';
import 'package:provider/provider.dart';

class UpdateInfomation extends StatefulWidget {
  UpdateInfomation({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<UpdateInfomation> createState() => _UpdateInfomationState();
}

class _UpdateInfomationState extends State<UpdateInfomation> {
  TextEditingController _nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                          "Đổi Họ Và Tên",
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
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: 'Họ Và Tên',
                              labelText: 'Nhập Họ Và Tên',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Icon(Icons.edit),
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
                            onPressed: () {
                              this.widget.user!.name = _nameController.text;
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Đổi họ tên'),
                                    content: Text('Cập nhật thành công'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => nextScreenRemoveUntil(
                                          context,
                                          MainPageScreen(
                                            user: this.widget.user,
                                          ),
                                        ),
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text('Xác Nhận',
                                style: TextStyle(fontSize: 20)),
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.red),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(15)),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(150, 60)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
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
      ),
    );
  }
}
