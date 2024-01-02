import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  final IconData? icon;
  final void Function() onPressed;
  const BackIcon({required this.onPressed, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: appprimarycolor,
        ));
  }
}
