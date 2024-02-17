import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import '../../utils/my_routes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  changePage() {
    Future.delayed(const Duration(milliseconds: 500), () {});

    Timer.periodic(const Duration(seconds: 4), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.home);

      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4BA4CB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage(
                      "assets/portbg.png",
                    ),
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'MY PORTFOLIO',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print('Tap Events');
                  },
                  totalRepeatCount: 3,
                  pause: const Duration(milliseconds: 900),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
