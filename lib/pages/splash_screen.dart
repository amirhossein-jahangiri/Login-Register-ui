import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;
  _SplashScreenState() {

    // navigation timer
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false,
        );
      });
    });

    // icon animation timer
    Timer(Duration(milliseconds: 60), (){
      setState(() {
        _isVisible = true;
      });
    });
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor,
          ],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.topRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                  offset: Offset(5.0, 3.0),
                ),
              ],
            ),
            child: ClipOval(child: Icon(Icons.android_outlined, size: 140)),
          ),
        ),
      ),
    );
  }
}
