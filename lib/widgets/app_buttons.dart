import 'dart:ui';

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
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: color),
        ));
  }
}

class GetOtp extends StatelessWidget {
  final Function() onTap;
  final String txt;

  const GetOtp({super.key, required this.onTap, required this.txt});
  @override
  Widget build(Object context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        color: Colors.red,
        onPressed: onTap,
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
        ));
  }
}
