import 'package:farmlever_test/screens/bottom_nav_screen.dart';
import 'package:farmlever_test/screens/signup.dart';
import 'package:farmlever_test/theme/style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void _signup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignupScreen()),
    );
  }

  void _login(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => BottomNavScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/farmlogin.png'),
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
                    "Welcome back!",
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
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: Text('Forgot Password?'),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFBDCA32)),
                    alignment: Alignment.topRight,
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFBDCA32)),
                      ),
                      child: Text(
                        "Login",
                        style: appTheme().textTheme.subtitle1,
                      ),
                      onPressed: () => _login(context),
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text("Don't have account?"),
                      TextButton(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xFFBDCA32),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => _signup(context),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ],
            )));
  }
}
