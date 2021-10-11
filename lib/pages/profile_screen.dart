import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/common/theme_helper.dart';
import 'package:login_and_registration_ui/pages/splash_screen.dart';
import 'package:login_and_registration_ui/widgets/badge_notification_widget.dart';
import 'package:login_and_registration_ui/widgets/drawer_widget.dart';
import 'package:login_and_registration_ui/widgets/header_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(
          'Profile Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          BadgeNotificationWidget(
            icon: Icon(Icons.notifications),
            value: '10',
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: Stack(
          children: [

            // header widget
            Container(
              height: 100.0,
              child: HeaderWidget(100.0, false, Icons.house_rounded),
            ),

            // content
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                children: <Widget>[

                  // show profile photo
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: ThemeHelper().showProfilePhotoBoxDecoration(),
                    child: Icon(
                      Icons.person,
                      size: 80.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // full name
                  Text(
                    'Mr. Donald Trump',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),

                  SizedBox(height: 20.0),


                  // jobs name
                  Text(
                    'Former President',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),


                  SizedBox(height: 20),

                  // user information
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Text(
                      'User Information',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),

                  // card information
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 10.0,
                            ),
                            leading: Icon(Icons.my_location),
                            title: Text('Location'),
                            subtitle: Text('USA'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 10.0,
                            ),
                            leading: Icon(Icons.email),
                            title: Text('Email'),
                            subtitle: Text('testEmail@gmail.com'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 10.0,
                            ),
                            leading: Icon(Icons.phone),
                            title: Text('Phone'),
                            subtitle: Text('+1-555-555'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 10.0,
                            ),
                            leading: Icon(Icons.person),
                            title: Text('About Me'),
                            subtitle: Text('My name is Surena.'),
                          ),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),




          ],
        ),
      ),





    );
  }
}


