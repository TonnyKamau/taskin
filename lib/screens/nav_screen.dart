import 'package:flutter/material.dart';
import 'package:taskin/screens/screens.dart';
import 'package:taskin/widgets/custom_tabbar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    MyHomePage(),
    Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.calendar_today_outlined,
    Icons.settings_outlined,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        /* TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _screens,
          ), */
        bottomNavigationBar: Padding(
          
          padding: const EdgeInsets.only(bottom: 12.0),
          child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index)),
        ),
      ),
    );
  }
}
