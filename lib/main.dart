import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text(
        'Splash Screen',
        textScaleFactor: 2,
      ),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
