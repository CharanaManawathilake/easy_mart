import 'package:easy_mart/pages/features.dart';
import 'package:easy_mart/pages/login.dart';
import 'package:easy_mart/pages/register.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
          "/register": (context) => const RegisterPage(),
          "/features": (context) => const FeaturesPage()
        });
  }
}
