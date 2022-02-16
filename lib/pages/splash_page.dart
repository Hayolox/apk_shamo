import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/pages/sign_in.dart';
import 'package:shamo/pages/sign_up.dart';
import 'package:shamo/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const SignInPage();
        },
      )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/image_splash.png"))),
        ),
      ),
    );
  }
}
