import 'package:flutter/material.dart';
import 'package:my_portfolio_app/views/componets/my_back_button.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  myEducation(
    degreeName,
    schoolName,
    Year,
    imag,
  ) {
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
        gradient: const LinearGradient(
          colors: [
            Color(0xff4BA4CB),
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.45, 0.2],
        ),
        image: DecorationImage(
          alignment: AlignmentDirectional.centerEnd,
          image: AssetImage(imag),
          opacity: 0.6,
        ),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      height: 165,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Degree:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                degreeName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Institute:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                schoolName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Passing Year:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                Year,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const MyBackButton(),
        backgroundColor: const Color(0xff4BA4CB),
        title: const Text(
          "My Education",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myEducation('S.S.C', "Vidhya Vihar Secondery School", "2013",
                  'assets/education/ssc.png'),
              myEducation('H.S.C', 'Vidhya Vihar Secondery School', '2016',
                  'assets/education/ssc.png'),
              myEducation('Diploma', 'sir bhavsinhji polytechnic institute',
                  '2022', 'assets/education/diplo.png'),
              myEducation('Master in Flutter', 'Red & White institute', '2023',
                  'assets/education/red.png')
            ],
          ),
        ),
      ),
    );
  }
}
