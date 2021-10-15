import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _navigateBottomBar,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      backgroundColor: Colors.amberAccent,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.add_to_home_screen),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.add_to_home_screen),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.add_to_home_screen),
        ),
      ],
    );
  }
}
