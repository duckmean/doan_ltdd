import 'package:flutter/material.dart';
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
      backgroundColor: const Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 143, 186),
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //     children: <Widget>[
            //       Text(
            //         '  Nạp Thẻ',
            //           style: TextStyle(
            //           color: Color.fromARGB(255, 252, 249, 249),
            //           fontSize: 40,
            //           ),
            //       ),
            //     ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "QuizzCoin: 5000",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 20)),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 219, 219, 219)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              backgroundColor: Colors.red,
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
                              backgroundColor: Colors.purple,
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
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(327, 50),
                      backgroundColor: Colors.blue,
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
