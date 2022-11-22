import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';

class CardGarena extends StatefulWidget {
  const CardGarena({super.key});
  @override
  State<CardGarena> createState() => _CardGarenaState();
}

class _CardGarenaState extends State<CardGarena> {
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
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/garena.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.fieldColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(15),
                    hintText: "Nhập Mã Thẻ",
                    // labelText: "Nhập mã thẻ",
                    labelStyle: TextStyle(
                      color: Color(0xff222C2F),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Thông báo'),
                      content: Text('Nạp thẻ thành công'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }, //bo sung 2
                child: const Text('Xác nhận', style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColor.bluebtn2),
                  overlayColor: MaterialStateProperty.all(AppColor.redbtn2),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  fixedSize: MaterialStateProperty.all(const Size(150, 60)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
