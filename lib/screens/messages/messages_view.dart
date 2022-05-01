import 'package:flutter/material.dart';


import '../../constant/app_colors.dart';
import '../../core/widgets/archive_tile.dart';
import '../../core/widgets/custom_divider.dart';
import '../../core/widgets/message_card.dart';
import '../../core/widgets/message_tab_app_bar.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatingActionButton(),
      body: Column(children: [
        const MessageTabAppBar(),
        Expanded(
            child: ListView.separated(

                padding: const EdgeInsets.symmetric(vertical: 6),
                itemCount: 20 + 1,
                separatorBuilder: (context,index){
                  return const CustomDivider();
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ArchiveTile();
                  }
                  return MessageCard();
                }))
      ]),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: const Icon(Icons.edit),
        onPressed: () {});
  }
}

