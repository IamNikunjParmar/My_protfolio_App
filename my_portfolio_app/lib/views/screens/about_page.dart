import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_app/utils/my_routes.dart';
import 'package:my_portfolio_app/views/componets/my_back_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool isVisible = false;

  myIcons(myLink, myIcon) {
    return Visibility(
      visible: isVisible,
      child: IconButton(
        onPressed: () {
          var link = myLink;
          launchUrl(
            Uri.parse(link),
          );
        },
        icon: Icon(
          myIcon,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const MyBackButton(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(200, -80, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Container(
                  height: 550,
                  width: 600,
                  child: Image.asset(
                    'assets/nik.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.59),
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Hello I Am",
                    style: TextStyle(
                      fontFamily: "Soho",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        'Nikunj Parmar',
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
                    totalRepeatCount: 5,
                    pause: const Duration(milliseconds: 900),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Flutter App Developer',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print('Tap Events');
                    },
                    totalRepeatCount: 3,
                    pause: const Duration(milliseconds: 1200),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff4BA4CB),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: const Text(
                      "Hire Me",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myIcons(
                        "https://github.com/IamNikunjParmar",
                        FontAwesomeIcons.github,
                      ),
                      myIcons(
                        "https://www.instagram.com/nikunj_mistry_210899?utm_source=qr&igsh=NnVub290bzhldmR6",
                        FontAwesomeIcons.instagram,
                      ),
                      myIcons(
                        "https://www.youtube.com/channel/UChYmWhexlR8msVOTXnWq7Sw",
                        FontAwesomeIcons.youtube,
                      ),
                      myIcons(
                        "https://www.facebook.com/nikunj.parmar.9216?mibextid=ZbWKwL",
                        FontAwesomeIcons.facebook,
                      ),
                      myIcons(
                        "https://wa.me/qr/HAMXLBQRVH5IO1",
                        FontAwesomeIcons.whatsapp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
