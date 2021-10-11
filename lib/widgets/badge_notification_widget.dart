import 'package:flutter/material.dart';

class BadgeNotificationWidget extends StatelessWidget {
  final Icon? icon;
  final String? value;

  const BadgeNotificationWidget({this.icon, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, right: 16),
      child: Stack(
        children: [
          icon!,
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              child: Text(
                value!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,color: Colors.white,
                ),
              ),
              constraints: BoxConstraints(
                minWidth: 12,minHeight: 12
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
