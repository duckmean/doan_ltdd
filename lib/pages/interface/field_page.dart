import 'package:flutter/material.dart';
import '../../Appcolor/appcolor.dart';
import 'play_page.dart';

class FieldPage extends StatefulWidget {
  const FieldPage({super.key});

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.background,
      // appBar: AppBar(
      //   backgroundColor: AppColor.background,
      //   toolbarHeight: 40,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 40,
                      bottom: 20,
                    ),
                    child: Text(
                      'Hãy chọn một lĩnh vực',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Khoa học',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.lightblue1),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Âm nhạc',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.redbtn2),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Thể thao',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.dartgreeen),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Lịch sử',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.lightblackbtn),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
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
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Xã hội',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.bluelightgreen),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Pháp luật',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.yellow1),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Văn hóa',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(AppColor.purple),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlayPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Địa lý',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.dartyellow),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(100, 100)),
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
