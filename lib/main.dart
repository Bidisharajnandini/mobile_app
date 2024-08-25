import 'package:flutter/material.dart';
import 'package:project/first_page.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const FirstPage();
          }
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "SPLASH \nSCREEN",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {   // MyApp - Main Widget
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {    // Builds widget - with some context
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage()
    );
  }
}