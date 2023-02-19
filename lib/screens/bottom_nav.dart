import 'package:dbradio/screens/events_screen.dart';
import 'package:dbradio/screens/more_screen.dart';
import 'package:dbradio/screens/presenters_screen.dart';
import 'package:dbradio/screens/programs_screen.dart';
import 'package:dbradio/screens/radio_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabscreen';

  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const RadioScreen(),
    },
    {
      'page': const EventScreen(),
    },
    {
      'page': const ProgramScreen(),
    },
    {
      'page': const PresenterScreen(),
    },
    {
      'page': const MoreScreen(),
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        unselectedItemColor: const Color.fromRGBO(145, 142, 142, 1),
        selectedItemColor: Colors.black,

        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
            icon: Image.asset('assets/images/homeicon.png'),
            label: 'Home',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
            icon: Image.asset('assets/images/eventicon.png'),
            label: 'Events',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
            icon: Image.asset('assets/images/progicon.png'),
            label: 'Programs',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
            icon: Image.asset('assets/images/presicon.png'),
            label: 'Presenters',
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
            icon: Image.asset('assets/images/moreicon.png'),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
