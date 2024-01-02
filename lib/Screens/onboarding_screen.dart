import 'package:campsocial/Screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:campsocial/utils/onboardingcontent.dart';
import 'package:campsocial/utils/text_button.dart';
import 'package:campsocial/utils/spacer.dart';
import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:get/route_manager.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  var currIndex = 0;
  @override
  void initState() {
    _pageController;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: onboardWidget(context), backgroundColor: Colors.white);
  }

  Widget onboardWidget(BuildContext context) {
    return PageView.builder(
        itemCount: intromessage.length,
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currIndex = index;
          });
        },
        itemBuilder: (context, position) {
          return Container(
            margin: const EdgeInsets.only(
              top: 80,
            ),
            //height: 220,
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/image/logo.jpeg"),
                  height: 400,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      intromessage[position].message,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        fontFamily: 'roboto',
                        fontWeight: FontWeight.bold,
                        color: appprimarycolor,
                      ),
                    )),
                spacing(40),
                Wrap(
                  children: List.generate(
                      intromessage.length, (index) => dots(index, context)),
                ),
                spacing(25),
                CustomButton(
                  onPressed: () => {
                    if (currIndex < intromessage.length - 1)
                      {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear)
                      }
                    else
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext _) =>
                                    const SignupSCreen()))
                      }
                  },
                  text: currIndex == intromessage.length - 1
                      ? "Get Started"
                      : "Continue",
                )
              ],
            ),
          );
        });
  }

  Widget dots(int index, BuildContext context) {
    return InkWell(
      onTap: () => {
        currIndex < index
            ? _pageController.nextPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.linear)
            : _pageController.previousPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.linear)
      },
      child: Container(
        height: 10,
        width: currIndex == index ? 20 : 10,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: appprimarycolor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
