import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/pages/login_screen.dart';
import 'package:login_and_registration_ui/pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFDC54FE),
        accentColor: Color(0xFF8A02Ae),
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}
