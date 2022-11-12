import 'package:flutter/material.dart';

class Forget_password2 extends StatefulWidget {
  const Forget_password2({super.key});
  @override
  State<Forget_password2> createState() => _Forget_password2State();
}

class _Forget_password2State extends State<Forget_password2>{
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
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 111, 190, 255),
          Color.fromARGB(255, 111, 190, 255),
        ],
        begin: Alignment.topLeft,
        end: Alignment.centerRight
        ),      
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
                      topRight: Radius.circular(40)
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,                 
                  children: [                 
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Nhập Mật Khẩu Mới',
                          labelText: 'Nhập Mật Khẩu Mới',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const TextField(   
                        obscureText: true,                
                        decoration: InputDecoration(
                          hintText: 'Nhập Lại Mật Khẩu Mới',
                          labelText: 'Nhập Lại Mật Khẩu Mới',                        
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),
                    ),  
                                                        
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: (){                         
                        },//bo sung 2
                        child: const Text('Xác nhận',style: TextStyle(fontSize: 20)),
                        style: ButtonStyle(                                                                             
                          overlayColor: MaterialStateProperty.all(Colors.red),
                          padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                          fixedSize: MaterialStateProperty.all(const Size(150, 60)),
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
