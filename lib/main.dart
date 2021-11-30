import 'package:flutter/material.dart';
import 'package:goodzone/Favorites/favoritesPage.dart';
import 'package:goodzone/Home/homepage.dart';
import 'package:goodzone/Search/search.dart';
import 'package:goodzone/Shop/shopPage.dart';

import 'Person/profilPage.dart';


void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    ShopPage(),
    FavoritesPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text('HOME'),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              title: Text('CALENDAR'),
              activeIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              title: Text('CALENDAR'),
              activeIcon: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text('CALENDAR'),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 36,
              ),
              title: Text('PROFILE'),
              activeIcon: Icon(
                Icons.person,
                color: Colors.red,
                size: 36,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

}