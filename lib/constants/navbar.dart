import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serenity/UI/sholak/readshloke.dart';
import 'package:serenity/UI/story/story.dart';
import 'package:serenity/UI/timer/timer.dart';
import 'package:serenity/constants/const.dart';

class NavBarScreen extends StatefulWidget {
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    SWidget(),
    PomodoroScreen(),
    storyWidget(),
  ];

  // Function to handle item taps in BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Row(
          children: [
            Text(
              'Serenity AI',
              style: primaryTextStyle,
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bgColor,
        unselectedItemColor: Colors.white,
        selectedFontSize: 10,
        showSelectedLabels: false,
        selectedItemColor: accentColor,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: GoogleFonts.poppins(),
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/open-book1.png")),
            label: 'Shloka',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/yoga.png")),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/reading-book.png")),
            label: 'Story',
          ),
        ],
      ),
    );
  }
}
