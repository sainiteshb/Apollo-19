import 'package:apollo19/pages/info_page.dart';
import 'package:apollo19/pages/maps_page.dart';
import 'package:apollo19/pages/signin_page.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'home_page.dart';

class MainNav extends StatefulWidget {
  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[
    HomePage(),
    MapsPage(),
    InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: mainColor,
              size: 30.0,
            ),
            onPressed: () {
              signOutGoogle();
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Apollo 19',
            style: TextStyle(
              color: mainColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: _pages.elementAt(_currentIndex),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            iconSize: 26.0,
            backgroundColor: mainColor,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                title: Text('Maps'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                title: Text('Info'),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
