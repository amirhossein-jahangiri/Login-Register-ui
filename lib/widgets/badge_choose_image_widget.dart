import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login_and_registration_ui/common/theme_helper.dart';

class BadgeChooseImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // ...
        log('choose image badge widget was called');
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(30.0),
            decoration: ThemeHelper().showBadgeChooseImageBoxDecoration(),
            child: Icon(
                Icons.person,
              size: 80,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(90, 90, 0, 0),
            child: Icon(
              Icons.add_circle,
              size: 35,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
