import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/common/theme_helper.dart';
import 'package:login_and_registration_ui/pages/profile_screen.dart';
import 'package:login_and_registration_ui/pages/register_screen.dart';
import 'package:login_and_registration_ui/widgets/header_widget.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey _formKey = GlobalKey<FormState>();

  final double _headerHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 50.0),
                    ),
                    Text(
                      'Signin into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // user name text field
                          TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'User Name', 'Enter your user name'),
                          ),

                          SizedBox(height: 30.0),

                          // password text field
                          TextFormField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                                'Password', 'Enter your password'),
                          ),

                          SizedBox(height: 30.0),

                          Container(
                            child: Text('Forgot your password?'),
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                          ),
                          Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()),
                                );
                              },
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  'Sign In'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            //child: Text('Don\'t have an account? Create it'),
                            child: RichText(
                              text: TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Don\'t have an account?  ',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  TextSpan(
                                    text: 'Create',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                                      );
                                      },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color: Theme.of(context).accentColor,
                                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
