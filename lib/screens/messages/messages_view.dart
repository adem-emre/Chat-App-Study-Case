import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/users_cubit.dart';
import '../chat/chat_view.dart';

import '../../core/widgets/archive_tile.dart';
import '../../core/widgets/custom_divider.dart';
import '../../core/widgets/message_card.dart';
import '../../core/widgets/message_tab_app_bar.dart';
import '../../cubit/chat_cubit.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MessageTabAppBar(),
      Expanded(
        child: BlocBuilder<UsersCubit, UsersState>(builder: (context, state) {
          if (state is UsersInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UsersLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UsersLoaded) {
            return ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 6),
                itemCount: state.users.length +1,
                separatorBuilder: (context, index) {
                  return const CustomDivider();
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ArchiveTile();
                  }
                  return MessageCard(
                    user: state.users[index - 1],
                    onTap: () {
                     context.read<ChatCubit>().setSelectedUser(state.users[index - 1]);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatView()));
                    },
                  );
                });
          } else {
            return Center(
              child: Text((state as UsersError).message),
            );
          }
        }),
      )
    ]);
  }
}
