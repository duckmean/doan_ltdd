// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 143, 186),
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.power_settings_new,
                      color: Colors.black,
                      size: 35,
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "QC: 5000",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 20)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 219, 219, 219)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   // ignore: sort_child_properties_last
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: const Icon(
                  //       Icons.shopping_cart,
                  //       color: Colors.black,
                  //     ),
                  //     iconSize: 34,
                  //   ),
                  //   style: ButtonStyle(
                  //       backgroundColor: const MaterialStatePropertyAll(
                  //           Color.fromARGB(255, 210, 210, 210)),
                  //       minimumSize: MaterialStateProperty.all(Size(70, 20)),
                  //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(50)))),
                  // ),
                  // Container(
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       // TextButton(
                  //       //   onPressed: (){

                  //       //   },
                  //       //   child: Text(
                  //       //     "Đổi tài khoản",
                  //       //     style: TextStyle(
                  //       //       fontSize: 17,
                  //       //       color: Colors.black
                  //       //     ),
                  //       //   ),
                  //       //   style: ButtonStyle(
                  //       //     minimumSize: MaterialStateProperty.all(Size(130, 20)),
                  //       //     backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 219, 219, 219)),
                  //       //     shape: MaterialStateProperty.all(
                  //       //       RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(50)
                  //       //       )
                  //       //     )
                  //       //   ),
                  //       // ),
                  //       // IconButton(
                  //       //   onPressed: () {},
                  //       //   icon: const Icon(
                  //       //     Icons.volume_up_outlined,
                  //       //     color: Colors.black,
                  //       //     size: 35,
                  //       //   ),
                  //       //   padding:const EdgeInsets.all(10),
                  //       // ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 216, 159),
                  image: DecorationImage(
                      image: AssetImage(
                          "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                      fit: BoxFit.cover),
                  border: Border.all(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(150)),
            ),
            Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Bắt dầu',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 209, 209, 209)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Nhận thêm QC',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 209, 209, 209)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Kỷ lục',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 209, 209, 209)),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(200, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Phúc Best"),
              accountEmail: Text("phucbestth2002@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 28, 86, 232),
                child: Text(
                  "P",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shoping"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
