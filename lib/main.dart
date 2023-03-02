import 'package:flutter/material.dart';
import 'package:my_dzikir/splashscreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //backgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
