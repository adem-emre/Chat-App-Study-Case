import 'package:flutter/material.dart';
import 'package:study_case/core/extensions/context_ext.dart';

import '../../constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final Widget? suffix;
  final String hintText;
  const CustomTextField({
    Key? key,
    this.suffix,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          fillColor: AppColors.textFieldColor,
          filled: true),
    );
  }
}
