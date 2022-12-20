import 'package:auto_size_text/auto_size_text.dart';
import 'package:doan_ltdd/provider/field_object.dart';
import 'package:doan_ltdd/utils/next_screen.dart';
import 'package:flutter/material.dart';
import '../../Appcolor/appcolor.dart';
import 'play_page.dart';
import 'package:doan_ltdd/provider/field_provider.dart';

class FieldPage extends StatefulWidget {
  const FieldPage({super.key});

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: AppColor.background,
//       // appBar: AppBar(
//       //   backgroundColor: AppColor.background,
//       //   toolbarHeight: 40,
//       //   elevation: 0,
//       // ),
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("images/background.png"), fit: BoxFit.cover),
//           ),
//           child: Center(
//             child: Container(
//               padding: EdgeInsets.only(top: 60),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(
//                       top: 40,
//                       bottom: 20,
//                     ),
//                     child: Text(
//                       'Hãy chọn một lĩnh vực',
//                       style: TextStyle(
//                         color: AppColor.fieldColor,
//                         fontSize: 28,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(16),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     nextScreenRemoveUntil(context, PlayPage());
//                                   },
//                                   child: const Text(
//                                     'Khoa học',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal,
//                                         color: Colors.white),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(
//                                         AppColor.lightblue1),
//                                     minimumSize: MaterialStatePropertyAll(
//                                         Size(100, 100)),
//                                     shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     nextScreenRemoveUntil(context, PlayPage());
//                                   },
//                                   child: const Text(
//                                     'Thể Thao',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal,
//                                         color: Colors.white),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(
//                                         AppColor.redbtn2),
//                                     minimumSize: MaterialStatePropertyAll(
//                                         Size(100, 100)),
//                                     shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(15),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     nextScreenRemoveUntil(context, PlayPage());
//                                   },
//                                   child: const Text(
//                                     'Pháp luật',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal,
//                                         color: Colors.white),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(
//                                         AppColor.green),
//                                     minimumSize: MaterialStatePropertyAll(
//                                         Size(100, 100)),
//                                     shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     nextScreenRemoveUntil(context, PlayPage());
//                                   },
//                                   child: const Text(
//                                     'Địa lý',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal,
//                                         color: Colors.white),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(
//                                         AppColor.dartyellow),
//                                     minimumSize: MaterialStatePropertyAll(
//                                         Size(100, 100)),
//                                     shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
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
      body: SafeArea(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 100),
            child: Text(
              'Chọn Lĩnh Vực',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 7, 105, 234),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
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
                                      builder: (context) => PlayPage(
                                        category: lsProducts[index].id,
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
                                          color: Colors.red,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.red,
                                            Colors.yellow,
                                          ])),
                                  child: Center(
                                      child: AutoSizeText(
                                    lsProducts[index].tenlinhvuc,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              );
                            } else {
                              return Center(
                                child: Text('Error'),
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
