import 'package:app_tarea03_bbva/screens/details/details_screen.dart';
import 'package:app_tarea03_bbva/screens/home/home_screen.dart';
import 'package:app_tarea03_bbva/screens/login/login_screen.dart';
import 'package:app_tarea03_bbva/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      //home: const LoginScreen(),
      //home: const HomeScreen(),
      //home: const DetailsScreen(),
    );
  }
}
