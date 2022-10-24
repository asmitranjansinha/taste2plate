import 'package:flutter/material.dart';

class LoginSignup extends StatelessWidget {
  final String txt;
  final Function() onTap;
  final Color color;
  final BorderSide borderSide;
  const LoginSignup(
      {super.key,
      required this.txt,
      required this.onTap,
      required this.color,
      required this.borderSide});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: UnderlineInputBorder(borderSide: borderSide),
        onPressed: onTap,
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: color),
        ));
  }
}
