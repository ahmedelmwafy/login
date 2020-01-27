
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'Login-Page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 48.0,
            child: Image.asset("images/ahmed.jpg"),  
          ),
      );
      
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: "ahmed@gmail.com",
      decoration: InputDecoration(
        hintText: "Email",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );
    final Password = TextFormField(
      //keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: "ahmed",
      obscureText: true,
      decoration: InputDecoration(
        hintText: "password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final LoginButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: (16.0),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent ,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){},
          color: Colors.lightBlueAccent,
          child: Text('login',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
    final fotrgetLabel= FlatButton(
      child: Text('forget password?',style: TextStyle(color: Colors.black54),), 
      onPressed: () {},
    );
    var password;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.09,right: 24.0),
        children: <Widget>[
          logo,
          SizedBox(height: 24.0),
          email,
          SizedBox(height: 8.0),
          password,
          SizedBox(height: 24.0),
          LoginButton,
          fotrgetLabel,
        ],
      ),),
    );
  }
}