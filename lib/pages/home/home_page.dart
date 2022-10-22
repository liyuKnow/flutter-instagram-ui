import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom navbar
  int _selectedIndex = 0;
  _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages that are navigated via bottom navbar
  final List<Widget> _children = [
    UserHome(),
    Search(),
    Reels(),
    Shop(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "account"),
        ],
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
      ),
    );
  }
}
