// ignore_for_file: prefer_const_constructors
import 'package:doan_ltdd/pages/UI/field_page.dart';
import 'package:doan_ltdd/pages/UI/main_page.dart';
import 'package:doan_ltdd/pages/UI/result.dart';
import 'package:doan_ltdd/pages/login/login_screen.dart';
import 'package:doan_ltdd/provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/UI/welcome_page.dart';
import 'package:provider/provider.dart';
import 'package:doan_ltdd/provider/internet_provider.dart';
import 'package:doan_ltdd/provider/sign_in_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AilatrieuPhu());
}

class AilatrieuPhu extends StatelessWidget {
  const AilatrieuPhu({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => SignInProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => InternetProvider()),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: const MaterialApp(
        home: FieldPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: WelcomeScreen(),
    //   routes: {
    //     'welcome': (context) => WelcomeScreen(),
    //     'main': (context) => MainPage(),
    //   },
    // );
  }
}
