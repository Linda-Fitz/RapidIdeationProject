import 'package:farmlever_test/screens/login.dart';
import 'package:farmlever_test/screens/onboarding.dart';
import 'package:farmlever_test/screens/signup.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => OnBoardingScreen(),
  "/OnBoardingScreen": (BuildContext context) => LoginScreen(),
  "/LoginScreen": (BuildContext context) => SignupScreen(),
};
