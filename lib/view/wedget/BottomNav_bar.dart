import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/Home_veiw.dart';
import '../views/Setings.dart';
import '../views/ToolsScreen.dart';
import '../exercise regimens/ChooseWorkoutSystemScreen.dart';
import 'custom_tab_bar.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Home_veiw(),
    Toolsscreen(),

    ChooseWorkoutSystemScreen(),
    Setings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 55.0, // زيادة الارتفاع لاستيعاب التسميات
        items: <Widget>[
          _buildNavItem(Icons.home, "الرئيسيه"),
          _buildNavItem(Icons.calculate, "الادوات"),
          _buildNavItem(Icons.fitness_center, " التمارين"),
          _buildNavItem(Icons.settings, "الاعدادات"),

        ],
        color: Colors.grey,
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white),
        Text(
          label,
          style: GoogleFonts.changa(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
