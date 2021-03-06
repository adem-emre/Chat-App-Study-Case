

import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../extensions/context_ext.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const CustomButton({
    Key? key, required this.label, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width - 30,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 18),
          primary: AppColors.primaryColor),
      ),
    );
  }
}
