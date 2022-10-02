import 'package:ecom_ui/auth_screen/auth_screen.dart';
import 'package:ecom_ui/splashScreen/my_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecom_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AuthScreen(),
    );
  }
}
