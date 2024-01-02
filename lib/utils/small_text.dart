import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;

  const SmallText({this.color, this.size, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color ?? appprimarycolor),
    );
  }
}
