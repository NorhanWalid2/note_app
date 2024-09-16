import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  String text;
  CustomAppBar({
    super.key,
    required this.text,
    this.icon,
  });
  Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(
          width: 200,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: icon,
          ),
        ),
      ],
    );
  }
}
