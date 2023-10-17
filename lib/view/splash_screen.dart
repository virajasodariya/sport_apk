import 'package:flutter/material.dart';
import 'package:sport_apk/view/bottom_bar.dart';
import 'package:sport_apk/view/widget/apk_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const BottomBarScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash_screen_background_image.jpg",
            height: height,
            width: width,
            fit: BoxFit.fitHeight,
          ),
          buildApkLogo(height, width),
        ],
      ),
    );
  }


}
