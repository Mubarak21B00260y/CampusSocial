import 'package:campsocial/utils/Constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtextfield extends StatelessWidget {
  final String? label;
  final double? radus;
  final TextStyle? hintstyle;
  final TextEditingController? controller;
  final int? maxlenght;
  final bool obscuretext;
  final TextInputType? textInputType;
  final TextAlign? textAlign;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  const Customtextfield(
      {super.key,
      this.label,
      this.radus,
      this.hintstyle,
      this.controller,
      this.maxlenght,
      this.obscuretext = false,
      this.textInputType,
      this.textAlign,
      this.enabled,
      this.inputFormatters,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        height: 55,
        width: 350,
        child: TextFormField(
          enabled: enabled,
          controller: controller,
          obscureText: obscuretext,
          keyboardType: textInputType,
          maxLength: maxlenght,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              label: Text(
                label!,
              ),
              labelStyle: TextStyle(color: appprimarycolor)),
        ),
      ),
    );
  }
}
