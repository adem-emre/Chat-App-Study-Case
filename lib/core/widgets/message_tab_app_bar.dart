import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../extensions/context_ext.dart';
import 'custom_text_field.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_constants.dart';

class MessageTabAppBar extends StatelessWidget {
  const MessageTabAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: context.setScaledHeight(0.22),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColors.gradientMessageHeaderColor1,
        AppColors.gradientMessageHeaderColor2,
        AppColors.gradientMessageHeaderColor3,
        AppColors.gradientMessageHeaderColor4,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 24,bottom: 9),
          child: Text(
            AppConstants.appName,
            style: GoogleFonts.lexendDeca(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 9),
          child: CustomTextField(
            hintText: AppConstants.textFieldHint,
            suffix: Icon(Icons.search),
          ),
        )
      ]),
    );
  }
}
