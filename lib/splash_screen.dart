import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';

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
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 600,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 80,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: const Center(
                  child: Text(
                    "EXPLORE",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(19, 14, 81, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
