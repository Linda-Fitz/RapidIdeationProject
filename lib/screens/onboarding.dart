import 'package:farmlever_test/screens/login.dart';
import 'package:farmlever_test/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  Widget _buildImage(String assetName, {bool fullScreen = false}) {
    if (fullScreen) {
      return Align(
        child: Image.asset(
          'assets/$assetName.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        alignment: Alignment.bottomCenter,
      );
    } else {
      return Align(
        child: Image.asset('assets/$assetName.png', width: 350.0),
        alignment: Alignment.bottomCenter,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 14.0,
    );

    const fullScreenPageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFFF6F6F6)),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFF50685F),
      imagePadding: EdgeInsets.zero,
      bodyFlex: 1,
      imageFlex: 2,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Live your life smarter with Farmlever!",
          body:
              "Etiam lectus a mauris auctor. Volutpat velit ac pulvinar facilisi in nisl augue non etiam pellentesque.",
          image: _buildImage('images/onboarding1', fullScreen: true),
          decoration: fullScreenPageDecoration,
        ),
        PageViewModel(
          title: "Plan and manage all your tasks easily",
          body:
              "Etiam lectus a mauris auctor. Volutpat velit ac pulvinar facilisi in nisl augue non etiam pellentesque.",
          image: _buildImage('images/onboarding2', fullScreen: true),
          decoration: fullScreenPageDecoration,
        ),
        PageViewModel(
          title: "Try a new farming experience",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Etiam lectus a mauris auctor. Volutpat velit ac pulvinar.",
                  style: bodyStyle),
            ],
          ),
          image: _buildImage('images/onboarding3', fullScreen: true),
          decoration: fullScreenPageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip',
          style: TextStyle(
            color: Color(0xFFBDCA32),
            fontWeight: FontWeight.bold,
          )),
      next: const Icon(Icons.arrow_forward, color: Color(0xFFBDCA32)),
      done: const Text('Done',
          style: TextStyle(
            color: Color(0xFFBDCA32),
            fontWeight: FontWeight.bold,
          )),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: Color(0xFFED6C66),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
