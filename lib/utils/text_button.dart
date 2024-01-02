import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color? backgroungColor;
  final Color? foregroundColor;

  const CustomButton(
      {super.key,
      required this.onPressed,
      this.backgroungColor,
      this.foregroundColor,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          fixedSize: const Size(150, 40),
          foregroundColor: foregroundColor,
          backgroundColor: appprimarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}
