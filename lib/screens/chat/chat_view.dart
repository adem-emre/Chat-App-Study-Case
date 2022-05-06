import 'package:flutter/material.dart';
import 'package:study_case/constant/app_colors.dart';
import 'package:study_case/constant/app_constants.dart';
import 'package:study_case/core/extensions/context_ext.dart';
import 'package:study_case/core/widgets/custom_text_field.dart';

import '../../core/widgets/chat_action_button.dart';
import '../../core/widgets/chat_header.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);
  final footerItemPadding = const EdgeInsets.symmetric(horizontal: 9);
  final List<bool> messages = [
    false,
    false,
    true,
    false,
    true,
    true,
    false,
    false,
    true,
    false,
    true,
    true
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.chatBgColor,
        body: Column(
          children: [
            ChatHeader(),
            Expanded(
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: messages[index]
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(15, 9, 15, 0),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: messages[index]
                                  ? Radius.circular(18)
                                  : Radius.zero,
                              topRight: messages[index]
                                  ? Radius.zero
                                  : Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                            color: messages[index]
                                ? AppColors.myMessageColor
                                : AppColors.friendMessageColor,
                          ),
                          child: Text(
                            "lorem ipsum " * (index + 1),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    })),
            Container(
              color: Colors.white,
              height: context.setScaledHeight(0.15),
              child: Row(
                children: [
                  Padding(
                    padding: footerItemPadding,
                    child: const ChatActionButton(
                        icon: Icon(
                      Icons.image,
                      color: AppColors.primaryColor,
                    )),
                  ),
                  const Expanded(
                    child: CustomTextField(
                        hintText: AppConstants.yourMessage,
                        suffix: Icon(
                          Icons.send,
                          color: AppColors.primaryColor,
                        )),
                  ),
                  Padding(
                    padding: footerItemPadding,
                    child: const ChatActionButton(
                        icon: Icon(
                      Icons.mic,
                      color: Colors.teal,
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
