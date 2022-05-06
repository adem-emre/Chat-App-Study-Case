import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_case/core/extensions/context_ext.dart';
import 'package:study_case/core/widgets/chat_action_button.dart';

import '../../constant/app_colors.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      color: Colors.white,
      height: context.setScaledHeight(0.15),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.chevron_left)),
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: CircleAvatar(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LA LALISA",
                    style: GoogleFonts.lexendDeca(),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Online",
                        style: TextStyle(color: AppColors.secondaryTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const ChatActionButton(icon: Icon(Icons.phone_outlined)),
          const ChatActionButton(icon: Icon(Icons.videocam_outlined)),
        ],
      ),
    );
  }
}
