import 'package:flutter/material.dart';
import 'package:my_portfolio_app/utils/my_routes.dart';
import 'package:my_portfolio_app/views/screens/home_page.dart';

void main() {
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
        fontFamily: "soho",
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.home: (context) => const HomePage(),
      },
    );
  }
}
