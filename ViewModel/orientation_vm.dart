import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyOrientation {
  final BuildContext context;
  MyOrientation(this.context);

  static void systemUiOverlayStyle() {
    setPortraitUp();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
  }

  static void systemNavigationBarMode(bool isLight) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: isLight ? Brightness.light : Brightness.dark,
        systemNavigationBarColor:
            isLight ? const Color(0xffF6F6F6) : Colors.black,
        systemNavigationBarIconBrightness:
            isLight ? Brightness.dark : Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
  }

  static void setPortraitUp() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static void setLandscape() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      //DeviceOrientation.portraitUp,
    ]);
  }
}
