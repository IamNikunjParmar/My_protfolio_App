import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_app/views/componets/my_back_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  myProject(projectName, desc, imageUrl, image2, image3, iconUrl) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 4,
            offset: const Offset(4, 4),
          ),
        ],
        // gradient: const LinearGradient(
        //   colors: [
        //     Color(0xff4BA4CB),
        //     Colors.white,
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   stops: [
        //     0.5,
        //     0.9,
        //   ],
        // ),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      height: 235,
      width: 600,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Container(
                  height: 112,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                    ],
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 112,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage(image2), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 112,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage(image3), fit: BoxFit.cover),
                  ),
                ),
                const Spacer(),
                Transform.translate(
                  offset: const Offset(0, 50),
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.black,
                        onPressed: () {
                          var link = iconUrl;

                          launchUrl(
                            Uri.parse(link),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        icon: (const Icon(
                          FontAwesomeIcons.github,
                          size: 25,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  myProject2(project2, desc2, image4) {
    return Container(
      height: 112,
      width: 52,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(4, 4),
          ),
        ],
        image: DecorationImage(image: AssetImage(image4), fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width * 0.90;
    return Scaffold(
      backgroundColor: const Color(0xff4BA4CB),
      appBar: AppBar(
        elevation: 0,
        leading: const MyBackButton(),
        title: const Text(
          "Projects",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4BA4CB),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProject(
                'Weather App',
                'Using provider,current weather locate your city',
                "assets/images/weather1.png",
                "assets/images/weather2.png",
                "assets/images/weather3.png",
                "https://github.com/IamNikunjParmar/advanced_flutter/tree/master/pr_5_sky_skapper",
              ),
              myProject(
                'media Audio App',
                'Using provider,all packages for flutter',
                "assets/images/media1.png",
                "assets/images/media2.png",
                "assets/images/media3.png",
                "https://github.com/IamNikunjParmar/pr_3_media_boster_app/tree/master/pr_3_media_boster_app",
              ),
              myProject(
                'Resume Maker App',
                'Using provider,SharedPreferences data Storge',
                "assets/images/resume1.png",
                "assets/images/resume2.png",
                "assets/images/resume3.png",
                "https://github.com/IamNikunjParmar/resume_builder_app/tree/master/resume_bulider",
              ),
              myProject(
                'Bhagwat Geeta App',
                'Using provider,Api calling',
                "assets/images/bhagwat1.png",
                "assets/images/bhagwat2.png",
                "assets/images/bhagwat3.png",
                "https://github.com/IamNikunjParmar/advanced_flutter/tree/master/pr_4_departure",
              ),
              myProject(
                'Festival Maker App',
                'Using provider,Image Gallery Server Packages use',
                "assets/images/festival1.png",
                "assets/images/festival2.png",
                "assets/images/festival3.png",
                "https://github.com/IamNikunjParmar/quote_app1/tree/master/untitled1_pr_7_festival_app",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
