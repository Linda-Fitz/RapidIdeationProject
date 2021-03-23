import 'package:farmlever_test/screens/bottom_nav_screen.dart';
import 'package:farmlever_test/screens/signup.dart';
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
        appBar: AppBar(
          title: Text('Login Screen'),
          backgroundColor: Colors.green,
        ),
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
                    'Farmlever.',
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 36),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 21),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
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
                      border: OutlineInputBorder(),
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
                          MaterialStateProperty.all<Color>(Colors.green),
                      alignment: Alignment.topRight),
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
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text('Login'),
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
                            color: Colors.green,
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
