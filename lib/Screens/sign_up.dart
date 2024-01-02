import 'package:campsocial/Screens/onboarding_screen.dart';
import 'package:campsocial/utils/Constants/big_text.dart';
import 'package:campsocial/utils/back_icon.dart';
import 'package:campsocial/utils/small_text.dart';

import 'package:campsocial/utils/text_button.dart';
import 'package:campsocial/utils/text_field.dart';
import 'package:flutter/material.dart';
//import 'package:campsocial/Screens/sign_up.dart';

class SignupSCreen extends StatelessWidget {
  const SignupSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 10, right: 300),
              height: 50,
              child: BackIcon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnboardingScreen()));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 45,
                right: 45,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 70,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/image/logo.jpeg"))),
                  ),
                  const BigText(text: "Sign Up"),
                  const Customtextfield(label: " First Name"),
                  const Customtextfield(label: " Last Name"),
                  const Customtextfield(label: " Student's Mail"),
                  const Customtextfield(label: " New Passsword"),
                  const Customtextfield(label: "  Confirm  Password"),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                  top: 60,
                  bottom: 15,
                ),
                child: CustomButton(onPressed: () => {}, text: ' Sign Up')),
            Ink(
              child: const SmallText(text: " Have an account ? Signin instead"),
            ),
          ],
        ),
      ),
    );
  }
}
