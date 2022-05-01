import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200 ,
      height: 4,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          AppColors.dividerColor,
          Colors.white,
        ])
      ),
    );
  }
}
