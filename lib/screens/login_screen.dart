import 'package:flutter/material.dart';
import 'package:taste2plate/widgets/app_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const route = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Image.asset("assets/images/logo.png", scale: 3.2),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LoginSignup(
                  txt: "LOGIN",
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.route);
                  },
                  color: Colors.red,
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                LoginSignup(
                  txt: "SIGN UP",
                  onTap: () {},
                  color: Colors.black,
                  borderSide: BorderSide(color: Colors.transparent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
