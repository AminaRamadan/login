import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart';
import 'package:login_app/onBoarding/onBoarding_screen.dart';
import 'package:login_app/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:OnBoardingScreen(),
    );
  }
}

