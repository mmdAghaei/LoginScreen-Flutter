import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resome/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _splash() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    _splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Welcome Screen.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
