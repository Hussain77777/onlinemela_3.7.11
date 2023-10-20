import 'dart:async';

import 'package:flutter/material.dart';

import 'new_webview.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() async {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => NewWebViewScreen()));
    });
  }

  void initState() {
   startTimer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
       //   color: Color(0xFF030a29),
          child: Image.network("https://onlinemela.pk/assets/images/1571567292logo.png"),
        ),
      ),
    );
  }
}
