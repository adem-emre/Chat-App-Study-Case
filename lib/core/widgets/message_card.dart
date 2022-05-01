import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 21),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primaryColor,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text("Deneme " *2,maxLines: 1,style: GoogleFonts.lexendDeca(
                  color: Colors.black,
                ),),
                SizedBox(height: 12,),
                Text("Lorem " *8,maxLines: 1,style: const TextStyle(color: AppColors.secondaryTextColor),),
            ],
          ),
              )),
          Column(
            
            children: [
              Text("12:45"),
              Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "${3 * 9}",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}

