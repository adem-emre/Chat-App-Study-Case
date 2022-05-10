import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_constants.dart';
import '../messages/messages_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 1;
  late List<Widget> pages;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    pages = [
      Center(
        child: Text(
          AppConstants.callsTab,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      const MessagesView(),
      Center(
        child: Text(
          AppConstants.directoryTab,
          style: Theme.of(context).textTheme.headline6,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      floatingActionButton:
          _selectedIndex == 1 ? _floatingActionButton() : null,
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          items: [
            BottomNavyBarItem(
                activeColor: AppColors.primaryColor,
                icon: const Icon(Icons.phone),
                title: const Text(AppConstants.callsTab)),
            BottomNavyBarItem(
                activeColor: AppColors.primaryColor,
                icon: const Icon(Icons.message),
                title: const Text(AppConstants.messagesTab)),
            BottomNavyBarItem(
                activeColor: AppColors.primaryColor,
                icon: const Icon(Icons.person),
                title: const Text(AppConstants.directoryTab)),
          ],
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
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
