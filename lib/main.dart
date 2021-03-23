import 'package:farmlever_test/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmlever App',
      theme: ThemeData(),
      //home: OnBoardingScreen(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
