import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(93, 80, 254, 1),
              Color.fromRGBO(133, 114, 252, 1),
            ],
          ),
          image: DecorationImage(
              image: AssetImage("assets/images/background_splash.png"),
              alignment: Alignment.bottomCenter),
        ),
      ),
    );
  }
}
