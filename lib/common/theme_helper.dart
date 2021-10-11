import 'package:flutter/material.dart';

class ThemeHelper{
  InputDecoration textInputDecoration([String labelText = '' , String hintText = '']){
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(160.0),
        borderSide: BorderSide(color: Colors.grey),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(160.0),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(160.0),
        borderSide: BorderSide(color: Colors.red , width: 2.0),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(160.0),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),

    );
  }

  BoxDecoration buttonBoxDecoration(BuildContext context, [String color1 = '' , String color2 = '']){
    Color c1 = Theme.of(context).primaryColor;
    Color c2 = Theme.of(context).accentColor;
    if (color1.isEmpty == false) {
      c1 = Color(int.parse(color1));
    }
    if (color2.isEmpty == false) {
      c2 = Color(int.parse(color2));
    }

    return BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 1.0],
        colors: [
          c1,
          c2,
        ],
      ),
      color: Colors.deepPurple.shade300,
      borderRadius: BorderRadius.circular(30),
    );

  }

  BoxDecoration inputBoxDecorationShaddow() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 20,
        offset: const Offset(0, 5),
      )
    ]);
  }

  AlertDialog alartDialog(String title, String content, BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  ButtonStyle buttonStyle(){
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(Size(50, 50)),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  BoxDecoration drawerBoxDecoration(BuildContext context){
    return BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Theme.of(context).primaryColor.withOpacity(0.2),
          Theme.of(context).accentColor.withOpacity(0.5),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  BoxDecoration drawerHeaderBoxDecoration(BuildContext context){
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      gradient: LinearGradient(
        colors: <Color>[
          Theme.of(context).primaryColor.withOpacity(0.2),
          Theme.of(context).accentColor.withOpacity(0.5),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 1.0],
      ),
    );
  }

  // profile screen
  BoxDecoration showProfilePhotoBoxDecoration(){
    return const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black45,
          blurRadius: 20.0,
          offset: const Offset(1, 0.4),
        ),
      ],
    );
  }

  // register screen
  BoxDecoration showBadgeChooseImageBoxDecoration(){
    return BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: <BoxShadow>[
        BoxShadow(
            offset: Offset(5, 10),
            color: Colors.black45,
            blurRadius: 20.0
        ),
      ],
    );
  }

}

class LoginFormStyle{

}