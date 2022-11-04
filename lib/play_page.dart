// ignore: unused_import
import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 143, 186),
        toolbarHeight: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: (Color.fromARGB(31, 121, 114, 114)),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contrast_outlined,
            ),
            label: "50/50",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
            ),
            label: "Hỏi ý kiến khán giả",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.autorenew,
            ),
            label: "Đổi câu hỏi",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_phone,
            ),
            label: "Gọi điện thoại",
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Score: 2000",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(100, 20)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 219, 219, 219)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              height: 170,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 216, 159),
                  image: DecorationImage(
                      image: AssetImage(
                          "images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
                      fit: BoxFit.cover),
                  border: Border.all(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 100,
              child: Text(
                "Cau hoi",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 242, 237, 237),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "A.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Đáp án A",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 238, 238, 238)),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(300, 20)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "B.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Đáp án B",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 238, 238, 238)),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(300, 20)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "C.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Đáp án C",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 238, 238, 238)),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(300, 20)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "D.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Đáp án D",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 238, 238, 238)),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(300, 20)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
