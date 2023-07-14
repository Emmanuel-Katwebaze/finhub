import 'package:flutter/material.dart';
import 'package:finhub/pages/home_screen_page.dart';
import 'package:finhub/pages/savings_screen_page.dart';
import 'package:finhub/pages/loans_screen.dart';


class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    SavingsScreenPage(),
    LoansScreen(),
    ChatsScreenPage(),
    AccountScreenPage(),
  ];

  static const List<String> _menuTitles = <String>[
    'Home',
    'Savings',
    'Loans',
    'Chats',
    'Account',
  ];

  static const List<IconData> _menuIcons = <IconData>[
    Icons.home,
    Icons.savings,
    Icons.money,
    Icons.chat,
    Icons.account_box_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (var i = 0; i < _menuTitles.length; i++)
            BottomNavigationBarItem(
              icon: Icon(_menuIcons[i]),
              label: _menuTitles[i],
            ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF2B5BBA),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class ChatsScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chats Page'),
    );
  }
}

class AccountScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account Page'),
    );
  }
}
