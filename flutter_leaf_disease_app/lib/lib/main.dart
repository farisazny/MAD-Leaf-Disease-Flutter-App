import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/about_page.dart';
import 'package:flutter_application_2/pages/dashboard_page.dart';
import 'package:flutter_application_2/pages/prediction_page.dart';
import 'package:flutter_application_2/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home: const welcomePage(),

    routes: {
      '/WelcomePage' :(context) => const welcomePage(),
      '/DashboardPage' :(context) => const dashboardPage(),
      '/AboutPage' :(context) => const aboutPage(),
      '/PredictionPage' :(context) => const predictionPage(),
    }
    );
  }
}
