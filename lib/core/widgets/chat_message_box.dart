import 'package:flutter/material.dart';
import '../../models/message_model.dart';

import '../../constant/app_colors.dart';

class ChatMessageBox extends StatelessWidget {
  final Message message;
  const ChatMessageBox({
    Key? key, required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isFromMe
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 9, 15, 0),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: message.isFromMe
                ? const Radius.circular(18)
                : Radius.zero,
            topRight: message.isFromMe
                ? Radius.zero
                : const Radius.circular(18),
            bottomLeft: const Radius.circular(18),
            bottomRight: const Radius.circular(18),
          ),
          color: message.isFromMe
              ? AppColors.myMessageColor
              : AppColors.friendMessageColor,
        ),
        child: Text(
          message.message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
