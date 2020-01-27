import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ligin",
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        fontFamily: 'Nunito'
      ),
      home: LoginPage(),
    );
  }
}