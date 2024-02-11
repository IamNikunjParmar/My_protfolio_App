import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  myGoal(number, type) {
    return Row(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            type,
          ),
        ),
      ],
    );
  }

  mySpace(image, tech) {
    return Container(
      height: 135,
      width: 105,
      margin: const EdgeInsets.only(top: 10),
      child: Card(
        margin: const EdgeInsets.all(0),
        // color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff4BA4CB),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                offset: Offset(4, 4),
                blurRadius: 3,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                  width: 105,
                  height: 112,
                ),
              ),
              Text(
                tech,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
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
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
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
                  child: Image.asset(
                    'assets/nik.jpg',
                    height: 700,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Nikunj Parmar",
                      style: TextStyle(
                        fontFamily: "Soho",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Flutter App Developer",
                      style: TextStyle(
                        fontFamily: "Soho",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myGoal('25', ' All projects'),
                      myGoal('5', "Current projects"),
                      myGoal('88', 'Views'),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Text(
                    "My Skills",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpace(
                            "https://w7.pngwing.com/pngs/724/306/png-transparent-c-logo-c-programming-language-icon-letter-c-blue-logo-computer-program.png",
                            "C language",
                          ),
                          mySpace(
                              'https://e7.pngegg.com/pngimages/46/626/png-clipart-c-logo-the-c-programming-language-computer-icons-computer-programming-source-code-programming-miscellaneous-template.png',
                              'C ++'),
                          mySpace(
                              'https://w7.pngwing.com/pngs/595/79/png-transparent-dart-programming-language-flutter-object-oriented-programming-flutter-logo-class-fauna-bird-thumbnail.png',
                              'Dart'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpace(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSws-ce-ZBYZ57mJ1f0bqc7FFfhBUUleWDl83-kKcYK-ZUWoi32TCu74tzsZDgscE39O8g&usqp=CAU",
                            "Api Calling",
                          ),
                          mySpace(
                              'https://e7.pngegg.com/pngimages/119/167/png-clipart-firebase-cloud-messaging-google-developers-software-development-kit-google-angle-triangle-thumbnail.png',
                              "FireBase"),
                          mySpace(
                              'https://banner2.cleanpng.com/20180218/eye/kisspng-database-server-download-icon-database-symbol-5a89bd3a9fc661.9159900815189763146545.jpg',
                              'DataBase'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpace(
                            "https://w7.pngwing.com/pngs/742/150/png-transparent-figma-square-radio-set-signal-squares-bloomies-webdesign-tools-icon-thumbnail.png",
                            "Figma",
                          ),
                          mySpace(
                              'https://w7.pngwing.com/pngs/751/3/png-transparent-logo-php-html-others-text-trademark-logo-thumbnail.png',
                              "PHP"),
                          mySpace(
                              'https://res.cloudinary.com/strapi/image/upload/v1621261454/logo_vgoldp.png',
                              "Getx"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
