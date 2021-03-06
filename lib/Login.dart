import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  static String tag= 'Login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(backgroundColor: Colors.transparent,
      radius: 48.0 ,
      child: Image.asset('assets/train.png'),

      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final password = TextFormField(
      autofocus: false,
      initialValue: 'some pass word',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){

          },
          color: Colors.lightBlueAccent,
          child: Text('log IN', style: TextStyle(color: Colors.white),),

        ),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text('Forgot password?', style: TextStyle(color: Colors.black54),),
      onPressed: (){},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 48.0),
            loginbutton,
            forgotLabel,
          ],
        ),
      ),
      
    );
  }
}