import 'package:flutter/material.dart';
import 'package:lsan/screens/home_page.dart';
import 'package:lsan/widgets/widgets.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    Scaffold(
      body: Center(
        child: Text(
          'Another page',
          style: TextStyle(fontSize: 26),
        ),
      ),
    ),
  ];

  final List<IconData> _icons = const [
    Icons.chat,
    Icons.people,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          color: Colors.white,
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
