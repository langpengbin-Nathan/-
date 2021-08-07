import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homework/constants/color_constants.dart';
import 'package:homework/screens/card_screen.dart';
import 'package:homework/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const  BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreen createState() => _BaseScreen();
}

class _BaseScreen extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.creditCard), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cog), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartBar), label: 'Overview'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

      ),
    );
  }
}

//stful一堆就出来了

