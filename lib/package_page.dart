// ignore_for_file: unused_import


import 'package:flutter/material.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({super.key});

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 57, 143, 186),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 57, 143, 186),
        toolbarHeight: 45,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          )
        ),
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
                    iconSize: 28,
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
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(Icons.volume_up_outlined),
                    color: Colors.black54,
                    iconSize: 35,
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: (){
                            
                          },
                          child: Text(
                            "Qc: 5000",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: Image(
                width: 300,
                height: 300,
                image: AssetImage("images/tong-hop-nhung-show-truyen-hinh-thuc-te-giup-nang-trinh-tieng-anh-10 (1).jpg"),
              ),
            ),
            Container(
              width: 160,
              height: 100,
              child:  Text(
                "Hãy chọn một gói",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   TextButton(
                        onPressed: () {
                          
                        },
                        child: const Text(
                          "15 câu",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(110, 110)),
                          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 220, 57, 45)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                            )
                          )
                        ),
                      ),
                    
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "25 câu",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                         minimumSize: MaterialStateProperty.all(Size(110, 110)),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 220, 57, 45)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                          )
                        )
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "35 câu",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(110, 110)),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 220, 57, 45)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                          )
                        )
                      ),
                    ),
                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}