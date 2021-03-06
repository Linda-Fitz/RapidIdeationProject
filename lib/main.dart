import 'package:farmlever_test/routes.dart';
import 'package:farmlever_test/theme/style.dart';
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
      theme: appTheme(),
      //home: OnBoardingScreen(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
