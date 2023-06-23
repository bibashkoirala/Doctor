import 'package:doctor/screens/homescreen.dart';
import 'package:doctor/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex =0;
  final List<Widget> _screens = [
     //homescreen
    HomeScreen(),
     //message screen
     Container(),
     //Schedule screen
     Container(),
     //Settings Screen
     SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[ _selectedIndex],
      bottomNavigationBar: GNav(
        
           color: Color(0xFF008080),
          activeColor: Colors.pink,
          tabBackgroundColor: Colors.pink.shade50,
          gap: 8,
           padding: EdgeInsets.all(20),
           
          tabs: const [
            GButton(icon: Icons.home, text: 'Home',  ),
            GButton(icon: Icons.chat_bubble, text: 'Chat',),
            GButton(icon: Icons.calendar_month, text: 'Schedule',),
            GButton(icon: Icons.settings, text: 'Settings',),
      
        ],

        selectedIndex : _selectedIndex,
        onTabChange: (index) {
          setState(() {
              _selectedIndex = index;
             });
        },
      ),
    );
  }
}