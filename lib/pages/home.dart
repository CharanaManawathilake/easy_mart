// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0xea20ef5a), Colors.black],
          stops: <double>[0.281, 1],
        ))),
        Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Easy Mart",
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'JotiOne',
                          color: Colors.white)),
                  Image.asset('images/Homepage.png', width: 300, height: 300),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                          width: 250,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xff20ef5a),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text("Get Started",
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
