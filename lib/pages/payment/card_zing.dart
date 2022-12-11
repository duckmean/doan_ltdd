import 'package:flutter/material.dart';

import '../../Appcolor/appcolor.dart';

class CardZing extends StatefulWidget {
  const CardZing({super.key});
  @override
  State<CardZing> createState() => _CardZingState();
}

class _CardZingState extends State<CardZing> {
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
                    image: AssetImage("images/zing.png"), fit: BoxFit.cover),
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
                onPressed: () {},
                child: const Text(
                  'Xác nhận',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                  ),
                ),
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
