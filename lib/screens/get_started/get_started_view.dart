import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_constants.dart';
import '../../core/extensions/context_ext.dart';

import '../../core/widgets/custom_button.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.getStartedBgColor2,
            AppColors.getStartedBgColor,
            AppColors.getStartedBgColor2,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter
          )
        ),
        padding: const EdgeInsets.all(10),
        width: context.width,
        child: Column(
          children: [
            SizedBox(height: context.setScaledHeight(0.10)),
            Text(
              AppConstants.appName,
              style: GoogleFonts.lexendDeca(
                  color: AppColors.primaryColor, fontSize: 30),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.message,
              color: AppColors.primaryColor,
              size: context.setScaledWidth(0.4),
            ),
            SizedBox(height: context.setScaledHeight(0.05)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                AppConstants.getStartedHeader,
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                AppConstants.getStartedContent,
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            CustomButton(label: AppConstants.getStartedButton,onPressed: (){},),
          ],
        ),
      ),
    );
  }
}

