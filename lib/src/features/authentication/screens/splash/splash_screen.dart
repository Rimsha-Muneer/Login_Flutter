// ignore_for_file: must_call_super

import 'package:auth/src/constant/image_strings.dart';
import 'package:auth/src/features/authentication/screens/welcom/welcome.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
   void initState() {
     startAnimation();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(image: AssetImage(splashTopIcon)),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              top: 250,
              left: 90,
              child: Center(
                child: Column(
                  children: [
                    Text('Appable',
                        style: Theme.of(context).textTheme.headline2),
                    Text('Learn To Code',
                        style: Theme.of(context).textTheme.headline4),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              bottom: 40, child: Image(image: AssetImage(SplashImage)))
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
