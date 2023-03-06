// import 'main.dart';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:neeww/main.dart';
// import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'dart:async'; //Timer

void main() {
  runApp(const Splash());
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //이게 맞아
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(milliseconds: 5700),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },
    );
  }
}
