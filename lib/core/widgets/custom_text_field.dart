import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final Widget? suffix;
  final String hintText;
  const CustomTextField({
    Key? key, this.suffix, required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        suffix: suffix,
        hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)),
          fillColor: AppColors.textFieldColor,
          filled: true),
    );
  }
}
