import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hona/landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/hona_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: AnimatedSplashScreen(
        splash: Column(
          children: const [
            Text(
              'Hona',
              style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'from',
              style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Groupname',
              style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        nextScreen: const LandingPage(),
        splashIconSize: 100,
        duration: 3000,
        animationDuration: const Duration(seconds: 1),
      ),
    );
  }
}
