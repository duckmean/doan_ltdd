import 'package:doan_ltdd/Appcolor/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateInfomation extends StatefulWidget {
  const UpdateInfomation({super.key});

  @override
  State<UpdateInfomation> createState() => _UpdateInfomationState();
}

class _UpdateInfomationState extends State<UpdateInfomation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.png"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Đổi mật khẩu',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.textColor,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColor.fieldColor)),
            ),
          ),
        ],
      ),
    );
  }
}
