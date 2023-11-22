import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:starbhak_mart/nav.dart';

class SplashPNG extends StatelessWidget {
  const SplashPNG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.fadeIn(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.lightBlueAccent,
              Colors.lightBlue,
              Colors.blue,
              Colors.blueAccent,
              Colors.deepPurpleAccent,
              Colors.deepPurple,
              Colors.purple,
              Colors.purpleAccent,
            ],
          ),
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 200,
            child: Image.asset("assets/logo2.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const Nav(),
        ),
      ),
    );
  }
}
