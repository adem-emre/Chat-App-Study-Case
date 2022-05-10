import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_case/core/extensions/context_ext.dart';
import 'package:study_case/models/user_model.dart';

import '../../constant/app_colors.dart';

class MessageCard extends StatelessWidget {
  final Results user;
  final Function() onTap;
  const MessageCard({
    Key? key,
    required this.onTap,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.setScaledHeight(0.18),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 21),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(user.picture?.thumbnail ?? ''),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name?.first ?? "",
                    maxLines: 1,
                    style: GoogleFonts.lexendDeca(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem " * 8,
                    maxLines: 1,
                    style: const TextStyle(color: AppColors.secondaryTextColor),
                  ),
                ],
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("12:45"),
                if (user.dob?.age?.isOdd ?? false) ...[_messageCount()]
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _messageCount() {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.all(6),
        alignment: Alignment.center,
        width: 27,
        height: 27,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              user.dob!.age.toString(),
              style: const TextStyle(color: Colors.white),
            )));
  }
}
