import 'package:flutter/material.dart';
import '../../Appcolor/appcolor.dart';
import 'card_3tl.dart';
import 'card_garena.dart';
import 'card_zing.dart';

class GetMoreCoins extends StatefulWidget {
  const GetMoreCoins({super.key});
  @override
  State<GetMoreCoins> createState() => _GetMoreCoinsState();
}

class _GetMoreCoinsState extends State<GetMoreCoins> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    right: 15,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "QuizzCoin: 5000",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.textColor,
                      ),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 20)),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.fieldColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
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
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(327, 50),
                                    backgroundColor: Colors.orange,
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Card3TL(),
                                        ));
                                  },
                                  child: const Text('Nạp bằng thẻ 3TL',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(327, 50),
                                    backgroundColor: AppColor.redbtn2,
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CardGarena(),
                                        ));
                                  },
                                  child: const Text('Nạp bằng thẻ Garena',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(327, 50),
                                    backgroundColor: AppColor.purple,
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CardZing(),
                                        ));
                                  },
                                  child: const Text('Nạp bằng thẻ Zing',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(327, 50),
                      backgroundColor: AppColor.bluebtn2,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Xem Quảng Cáo',
                        style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
