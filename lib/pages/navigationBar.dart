import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationBarHome extends StatefulWidget {
  const NavigationBarHome({super.key});

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarHome> {
  int _pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      currentIndex: _pageIndex,
      onTap: (index) {
        setState(() {
          _pageIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home, size: 25),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.creditcard, size: 25),
          label: 'Card',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics, size: 25),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings, size: 25),
          label: 'Settings',
        ),
      ],
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('_pageIndex', _pageIndex));
  }
}
