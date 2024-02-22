// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0xea20ef5a), Colors.black],
          stops: <double>[0.281, 1],
        ))),
        Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 80, 30, 60),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        bottom: 5,
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                          controller: id,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffd9d9d9),
                            hintText: 'Enter your company id',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    20)), /* labelText: 'Enter your data' */
                          ))),
                  Container(
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffd9d9d9),
                            hintText: 'Enter the password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    20)), /* labelText: 'Enter your data' */
                          ))),
                  Image.asset('images/Login.png', width: 300, height: 300),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Container(
                          width: 250,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xff20ef5a),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text("Register",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'JotiOne',
                                    fontSize: 30,
                                  ))))),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/features');
                      },
                      child: Container(
                          width: 250,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xff20ef5a),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'JotiOne',
                                    fontSize: 30,
                                  )))))
                ]),
          ),
        ),
      ],
    ));
  }
}
