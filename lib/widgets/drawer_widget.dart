import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/common/theme_helper.dart';
import 'package:login_and_registration_ui/pages/login_screen.dart';
import 'package:login_and_registration_ui/pages/register_screen.dart';
import 'package:login_and_registration_ui/pages/splash_screen.dart';

class DrawerWidget extends StatelessWidget {
  final double _drawerIconSize = 24;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: ThemeHelper().drawerBoxDecoration(context),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: ThemeHelper().drawerHeaderBoxDecoration(context),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Surena Jahangiri',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.screen_lock_landscape_rounded,
                size: _drawerIconSize,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                'Splash',
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).accentColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.screen_lock_landscape_rounded,
                size: _drawerIconSize,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                'Login',
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).accentColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.screen_lock_landscape_rounded,
                size: _drawerIconSize,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                'Register',
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).accentColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
