import 'package:farmlever_test/screens/login.dart';
import 'package:farmlever_test/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SignUpState();
}

class _SignUpState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/images/farmsignup.png'),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Farmlever.",
                  style: appTheme()
                      .textTheme
                      .headline2
                      .copyWith(color: Color(0xFFBDCA32)),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Sign up!",
                  style: appTheme()
                      .textTheme
                      .headline4
                      .copyWith(color: Color(0xFFF6F6F6)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  obscureText: true,
                  controller: passwordController2,
                  decoration: InputDecoration(
                    labelText: 'Re-enter password',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                                color: Color(0xFFBDCA32),
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // code to open / launch privacy policy link here
                              }),
                        TextSpan(
                          text: ' and ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    color: Color(0xFFBDCA32),
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // code to open / launch privacy policy link here
                                  }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFBDCA32)),
                  ),
                  child: Text(
                    "Sign up",
                    style: appTheme().textTheme.subtitle1,
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Already have an account?'),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFBDCA32),
                        ),
                      ),
                      onPressed: () => _onIntroEnd(context),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
