import 'package:first/account.dart';
import 'package:first/favorite.dart';
import 'package:first/home.dart';
import 'package:first/order.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});



  @override
  State<Navbar> createState() => _NavbarState();
}



class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List screens = [
    Home(),   Favorite() , Orders(), Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite),
            tooltip: "favorite",
          ),
          BottomNavigationBarItem(
            label: "Order",
            icon: Icon(Icons.shopping_basket),
            tooltip: "Order",
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle),
            tooltip: "Account",
          ),
        ],
        backgroundColor: Colors.grey[100],
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 17.0,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 18.0),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
        ),

        unselectedFontSize: 17.0,
        unselectedIconTheme: IconThemeData(color: Colors.black, size: 18.0),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 17.0,
          fontWeight: FontWeight.normal,
        ),
        onTap: (int index) {
          print(index);
          setState(() { //H0T RELOAD THE PAGE
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
      body: screens[_selectedIndex],
    );
  }
}
