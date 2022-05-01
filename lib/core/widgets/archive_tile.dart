

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_constants.dart';

class ArchiveTile extends StatelessWidget {
  const ArchiveTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          color: AppColors.archiveTileLeadingColor,
          shape: BoxShape.circle
        ),
        child:  IconButton( onPressed: (){}, icon: const Icon(Icons.bookmark,color: Colors.white,),)),
      title: Text(AppConstants.archivedMessages,style: GoogleFonts.lexendDeca(),),
    );
  }
}

