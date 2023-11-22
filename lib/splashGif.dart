import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:starbhak_mart/nav.dart';

class SplashGIF extends StatelessWidget {
  const SplashGIF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.gif(
          gifPath: 'assets/logo.gif',
          gifWidth: 269,
          gifHeight: 474,
          nextScreen: const Nav(),
          backgroundColor: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 600),
          onInit: () async {
            debugPrint("onInit");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
          },
        ),
      ),
    );
  }
}
