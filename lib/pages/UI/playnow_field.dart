import 'package:auto_size_text/auto_size_text.dart';
import 'package:doan_ltdd/pages/UI/playnow.dart';
import 'package:doan_ltdd/provider/field_object.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';
import '../../Appcolor/appcolor.dart';
import '../../provider/user_object.dart';
import 'play_page.dart';
import 'package:doan_ltdd/provider/field_provider.dart';

class FieldPlayNow extends StatefulWidget {
  FieldPlayNow({Key? key, required this.user}) : super(key: key);
  User? user;

  @override
  State<FieldPlayNow> createState() => _FieldPlayNowState();
}

class _FieldPlayNowState extends State<FieldPlayNow> {
  List<FieldQuestion> lsProducts = [];
  void _LoadDanhSach() async {
    final data = await linhvucProvider.fetchPackage();
    setState(() {});
    lsProducts = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 100,
                ),
                child: Container(
                  width: 150,
                  height: 100,
                  child: Text(
                    'Chọn Lĩnh Vực',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColor.fieldColor,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.20,
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, right: 20, top: 50),
                    //width: Get.size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              height: 30,
                            ),
                            itemCount: lsProducts.length,
                            itemBuilder: (context, index) {
                              if (lsProducts.length > 0) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayNow(
                                          category: lsProducts[index].id,
                                          user: this.widget.user,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    height: 90,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColor.lightblackbtn,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          AppColor.fieldColor,
                                          AppColor.bluebtn2,
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: AutoSizeText(
                                        lsProducts[index].tenlinhvuc,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.textColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
