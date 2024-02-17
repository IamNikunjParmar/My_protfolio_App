import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/firebase_options.dart';
import 'package:my_portfolio_app/utils/my_routes.dart';
import 'package:my_portfolio_app/views/screens/about_page.dart';
import 'package:my_portfolio_app/views/screens/education_page.dart';
import 'package:my_portfolio_app/views/screens/home_page.dart';
import 'package:my_portfolio_app/views/screens/project_page.dart';
import 'package:my_portfolio_app/views/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Soho",
        useMaterial3: true,
        //primarySwatch: Colors.cyan,
      ),
      initialRoute: MyRoutes.splashScreenPage,
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.aboutPage: (context) => const AboutPage(),
        MyRoutes.projectPage: (context) => const ProjectPage(),
        MyRoutes.splashScreenPage: (context) => const SplashScreenPage(),
        MyRoutes.educationPage: (context) => const EducationPage(),
      },
    );
  }
}
