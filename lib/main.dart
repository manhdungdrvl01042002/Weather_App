import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('WEATHER APP'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(left: 4),
                  child: SvgPicture.asset('assets/vectors/ic_navbar.svg'),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 32,
                      padding: const EdgeInsets.only(top: 5),
                      margin: const EdgeInsets.only(left: 20),
                      child: const Center(
                        child: Text(
                          'India,Mumbai',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF130E51),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 4),
                      child: SvgPicture.asset('assets/vectors/ic_search.svg'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFADA7FE).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5D50FE),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 78,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  child: const Center(
                    child: Text(
                      'Tomorrow',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF130E51),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  child: const Center(
                    child: Text(
                      'Next Week',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF130E51),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 332,
                  height: 280,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 71, 162, 216)
                        .withOpacity(0.9),
                    borderRadius: BorderRadius.circular(36),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/background-item.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 332,
                        height: 100,
                        decoration: const BoxDecoration(),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 200,
                          height: 100,
                          child: const Center(
                            child: Text(
                              '25°',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 88,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: Container(
                            width: 200,
                            height: 50,
                            child: const Center(
                              child: Text(
                                'Clouds & sun',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 66,
                        left: 66,
                        child: Container(
                          width: 200,
                          height: 50,
                          child: const Center(
                            child: Text(
                              'Humidity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 66,
                        child: Container(
                          width: 200,
                          height: 50,
                          child: Center(
                            child: Text(
                              '35°',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 154,
                          height: 114,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/sun.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        right: -20,
                        child: Container(
                          width: 154,
                          height: 114,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/cloud.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 323,
            height: 50,
            margin: const EdgeInsets.only(top: 23),
            decoration: const BoxDecoration(),
            child: const Text(
              'Next 15 Days',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFF130E51),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(1),
            height: 190.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 190,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Container(
                          width: 80,
                          height: 190,
                          decoration: BoxDecoration(
                            color: const Color(0xFF28E0AE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 180,
                        decoration: BoxDecoration(
                          color: const Color(0xFF28E0AE),
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        decoration: const BoxDecoration(),
                        child: const Center(
                          child: Text(
                            'Monday',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30,
                        child: Container(
                          width: 50,
                          height: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/sun_ic.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -10,
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cloud_ic.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '40°',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: Center(
                            child: Text(
                              '56°',
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '69°',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 148.0,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Container(
                          width: 80,
                          height: 190,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF0090),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 180,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF0090),
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        decoration: const BoxDecoration(),
                        child: const Center(
                          child: Text(
                            'Tuesday',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30,
                        child: Container(
                          width: 50,
                          height: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/smoke.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -10,
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cloud_ic.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '50°',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: Center(
                            child: Text(
                              '52°',
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '64x°',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 148.0,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Container(
                          width: 80,
                          height: 190,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFAE00),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 180,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFAE00),
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        decoration: const BoxDecoration(),
                        child: const Center(
                          child: Text(
                            'Wednesday',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30,
                        child: Container(
                          width: 50,
                          height: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/clay.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -10,
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cloud_ic.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '50°',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: Center(
                            child: Text(
                              '56°',
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '69°',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 148.0,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Container(
                          width: 80,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 18, 18),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 214, 18, 18),
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        decoration: const BoxDecoration(),
                        child: const Center(
                          child: Text(
                            'Monday',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30,
                        child: Container(
                          width: 50,
                          height: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/sun_ic.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -10,
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cloud_ic.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '40°',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: Center(
                            child: Text(
                              '56°',
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              '69°',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
