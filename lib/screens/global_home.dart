import 'package:flutter/material.dart';
import 'package:sajda_app/screens/pages/saved_sura.dart';
import 'package:sajda_app/screens/pages/tasbeh.dart';
import 'package:sajda_app/screens/qibla.dart';

import '../app/constants/globals.dart';
import 'pages/home_screen.dart';
import 'pages/tahorat_oliw.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    QiblahScreen(),
    Ablution(),
    TasbehScreen(),
    SavedSura(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: Colors.red,
    items: [
      _bottomBarItem(icon: "assets/images/surakitob.png", label: ""),
      _bottomBarItem(icon: "assets/images/compass.png", label: ""),
      _bottomBarItem(icon: "assets/images/water.png", label: ""),
      _bottomBarItem(icon: "assets/images/tasbih.png", label: ""),
      _bottomBarItem(icon: "assets/images/bookmark.png", label: ""),
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
  );
  BottomNavigationBarItem _bottomBarItem({
    required String icon,
    required String label,
  }) => BottomNavigationBarItem(
    icon: Image.asset(icon, color: text, scale: 18),
    activeIcon: Image.asset(
      icon,
      color:
          Theme.of(context).brightness == Brightness.light
              ? primary
              : Colors.white,
      scale: 17,
    ),
    label: label,
  );
}
