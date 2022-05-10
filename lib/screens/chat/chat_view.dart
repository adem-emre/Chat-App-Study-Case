import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_constants.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../cubit/chat_cubit.dart';
import '../../models/message_model.dart';

import '../../core/widgets/chat_action_button.dart';
import '../../core/widgets/chat_header.dart';
import '../../core/widgets/chat_message_box.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);
  final footerItemPadding = const EdgeInsets.symmetric(horizontal: 9);
  final int extraScrollValue = 60;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.chatBgColor,
        body: Column(
          children: [
            ChatHeader(
                selectedUser: context.read<ChatCubit>().state.selectedUser!),
            _messagesSection(),
            _senMessageSection(context)
          ],
        ),
      ),
    );
  }

  Expanded _messagesSection() {
    return Expanded(child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return ListView.builder(
                controller: _scrollController,
                  itemCount: state.chatMessages.length,
                  itemBuilder: (context, index) {
                    return ChatMessageBox(
                      message: state.chatMessages[index],
                    );
                  });
            },
          ));
  }

  Container _senMessageSection(BuildContext context) {
    return Container(
            color: Colors.white,
            height: 100,
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
                Expanded(
                  child: CustomTextField(
                      controller:
                          context.read<ChatCubit>().textEditingController,
                      hintText: AppConstants.yourMessage,
                      suffix: IconButton(
                        onPressed: () {
                          context.read<ChatCubit>().sendMessage(Message(
                              message: context
                                  .read<ChatCubit>()
                                  .textEditingController
                                  .text
                                  .trim(),
                              isFromMe: true));
                           _scrollController.jumpTo(_scrollController.position.maxScrollExtent+extraScrollValue);

                        },
                        icon: const Icon(
                          Icons.send,
                          color: AppColors.primaryColor,
                        ),
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
          );
  }
}
