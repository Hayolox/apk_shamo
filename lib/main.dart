import 'package:flutter/material.dart';
import 'package:shamo/detail-chat.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/sign_in.dart';
import 'package:shamo/pages/sign_up.dart';
import 'package:shamo/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const mainPage(),
        '/detail-chat': (context) => detailChat(),
      },
    );
  }
}
