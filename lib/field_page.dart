import 'package:flutter/material.dart';

class FieldPage extends StatefulWidget {
  const FieldPage({super.key});

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 57, 143, 186),
        toolbarHeight: 120,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black54,
                    iconSize: 35,
                  ),
                  IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(Icons.volume_up_outlined),
                    color: Colors.black54,
                    iconSize: 35,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextButton(
                    onPressed: (){
                      
                    },
                    child: Text(
                      "&5000",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                      ),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 20)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 219, 219, 219)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        )
                      )
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    
                    },
                    // ignore: sort_child_properties_last
                    child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.shopping_cart, color: Colors.black,),
                        iconSize: 30,
                      ),
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 210, 210, 210)),
                        minimumSize: MaterialStateProperty.all(Size(50, 20)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          )
                        )
                      ),
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
            Container(
              width: 300,
              height: 400,
              child: Image(
                image: AssetImage('images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg'),
                width: 500,
                height: 350,
              ),
            ),
            Text(
              'Hãy chọn một lĩnh vực',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 237, 237),
                fontSize: 20,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Khoa học',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 185, 58, 49)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Lịch sử',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 135, 33, 153)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Âm nhạc',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 61, 148, 63)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Xã hội',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 215, 200, 57)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Thể thao',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 4, 158, 229)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'Văn hóa',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 112, 76, 63)),
                            minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)
                              )
                            )
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
    );
  }
}