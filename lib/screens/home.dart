import 'package:ecom_app/model/product_model.dart';
import 'package:ecom_app/screens/cart.dart';
import 'package:ecom_app/screens/feed.dart';
import 'package:ecom_app/screens/home_page.dart';
import 'package:ecom_app/screens/message.dart';
import 'package:ecom_app/screens/ptofile_page.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    Feed(),
    Message(),
    CartPage(),
    //ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.feed_outlined), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
