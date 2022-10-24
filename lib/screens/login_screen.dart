import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste2plate/screens/signup_scree.dart';
import 'package:taste2plate/widgets/app_buttons.dart';
import 'package:taste2plate/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const route = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset("assets/images/logo.png", scale: 4.2),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LoginSignup(
                    txt: "LOGIN",
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginScreen.route, (route) => false);
                    },
                    color: Colors.red,
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  LoginSignup(
                    txt: "SIGN UP",
                    onTap: () {
                      Get.to(() => SignupScreen(), transition: Transition.rightToLeft);
                    },
                    color: Colors.black,
                    borderSide: const BorderSide(color: Colors.transparent),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                  width: 330,
                  child: InputField(
                      hinttxt: "Mobile  Number",
                      icon: "assets/icons/smartphone.png")),
              const SizedBox(
                height: 27,
              ),
              const SizedBox(
                  width: 330,
                  child: InputField(
                      hinttxt: "Otp", icon: "assets/icons/mobile-phone.png")),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: 350,
                  child: GetOtp(onTap: () {}, txt: "GET OTP"))
            ],
          ),
        ),
      ),
    );
  }
}
