import 'package:flutter/material.dart';
import 'package:my_portfolio_app/utils/my_routes.dart';
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
    return SizedBox(
      height: 135,
      width: 105,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: const [
            BoxShadow(
              color: Colors.blueGrey,
              offset: Offset(4, 4),
              blurRadius: 3,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color(0xff4BA4CB),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
                child: Text(
                  tech,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
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
        leading: PopupMenuButton(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            offset: const Offset(15, 45),
            color: Colors.black,
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.projectPage);
                      },
                      child: const Text(
                        'Projects',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.aboutPage);
                      },
                      child: const Text(
                        'About Me',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.educationPage);
                      },
                      child: const Text(
                        ' My Education',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ]),
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
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
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
                child: SizedBox(
                  height: 460,
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
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Flutter App Developer",
                    style: TextStyle(
                      fontFamily: "Soho",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.only(right: 12, left: 12),
            margin: const EdgeInsets.only(top: 30, right: 5, left: 5),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mySpace(
                            "assets/images/clang.png",
                            "C language",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/c++.png", 'C ++'),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/dart.png", 'Dart'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mySpace(
                            "assets/images/api.png",
                            "Api Calling",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/firebase.png", "FireBase"),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/database.png", 'DataBase'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mySpace(
                            "assets/images/figma.png",
                            "Figma",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/php.png", "PHP"),
                          const SizedBox(
                            width: 5,
                          ),
                          mySpace("assets/images/getx.png", "Getx"),
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
