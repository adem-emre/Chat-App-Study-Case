import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:study_case/constant/app_colors.dart';
import 'package:study_case/screens/messages/messages_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 1;
  List<Widget> pages = const [SizedBox(), MessagesView(), SizedBox()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
          items: [
            BottomNavyBarItem(
              activeColor: AppColors.primaryColor,
                icon: Icon(Icons.phone), title: const Text("Calls")),
            BottomNavyBarItem(
              activeColor: AppColors.primaryColor,
                icon: Icon(Icons.message), title: const Text("Messages")),
            BottomNavyBarItem(
              activeColor: AppColors.primaryColor,
                icon: Icon(Icons.person), title: const Text("Directory")),
          ],
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
