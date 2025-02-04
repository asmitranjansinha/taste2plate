import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste2plate/screens/home.dart';

import '../widgets/app_buttons.dart';
import '../widgets/text_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const route = 'signup_screen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
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
                      Get.to(() => const LoginScreen(),
                          transition: Transition.leftToRight);
                    },
                    color: Colors.black,
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  LoginSignup(
                    txt: "SIGN UP",
                    onTap: () {},
                    color: Colors.red,
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                  width: 330,
                  child: InputField(
                      hinttxt: "Email", icon: "assets/icons/mail.png")),
              const SizedBox(
                height: 27,
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
                      hinttxt: "Referral Code (optional)",
                      icon: "assets/icons/mobile-phone.png")),
              const SizedBox(
                height: 27,
              ),
              const SizedBox(
                  width: 330,
                  child: InputField(
                      hinttxt: "Otp", icon: "assets/icons/mobile-phone.png")),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.red;
                        }
                        return Colors.grey;
                      }),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  const Text(
                    "By signing up, you agree to our Terms and\nConditions",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 50,
                  width: 350,
                  child: GetOtp(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, HomePage.route, (route) => false);
                      },
                      txt: "GET OTP"))
            ],
          ),
        ),
      ),
    );
  }
}
