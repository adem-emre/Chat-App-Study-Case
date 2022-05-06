import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class ChatActionButton extends StatelessWidget {
  final Widget icon;
  const ChatActionButton({
    Key? key, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      decoration: const BoxDecoration(
        color: AppColors.actionButtonBg,
        shape: BoxShape.circle
      ),
      child: IconButton(onPressed: (){}, icon: icon),
    );
  }
}
