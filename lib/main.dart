import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      },));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("API PRACTICE"),
      ),
    );
  }
}

