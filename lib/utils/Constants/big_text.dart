import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;

  @override
  const BigText({super.key, required this.text});

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: appprimarycolor, fontSize: 50, fontWeight: FontWeight.w900),
    );
  }
}
