import 'package:flutter/material.dart';
import 'package:flutter_app/pages/splash_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
