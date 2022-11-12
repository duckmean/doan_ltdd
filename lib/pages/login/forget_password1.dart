import 'package:flutter/material.dart';

import 'forget_password2.dart';
import 'login_screen.dart';

class Forget_password1 extends StatefulWidget {
  const Forget_password1({super.key});
  @override
  State<Forget_password1> createState() => _Forget_password1State();
}

class _Forget_password1State extends State<Forget_password1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        "Quên Mật Khẩu",
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
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Nhập Email',
                                      labelText: 'Email',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.email),
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                child: const Text('Gửi'),
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.all(15),
                      //   child: const TextField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Nhập Email',
                      //       labelText: 'Email',
                      //       border: OutlineInputBorder(),
                      //       prefixIcon: Icon(Icons.email),
                      //     ),
                      //   ),
                      // ),

                      Container(
                        padding: const EdgeInsets.all(15),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Nhập mã xác nhận Email',
                            labelText: 'Nhập mã xác nhận Email',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.check),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text(
                              'Quay lại',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forget_password2(),
                                ));
                          }, //bo sung 2
                          child: const Text('Xác nhận',
                              style: TextStyle(fontSize: 20)),
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.red),
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
