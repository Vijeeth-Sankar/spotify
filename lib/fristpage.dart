import 'package:flutter/material.dart';
import 'package:music/views/home.dart';
import 'package:music/views/library.dart';
import 'package:music/views/premium.dart';
import 'package:music/views/search.dart';

class Fristpage extends StatefulWidget {
  const Fristpage({Key? key}) : super(key: key);

  @override
  _FristpageState createState() => _FristpageState();
}

class _FristpageState extends State<Fristpage> {
  int _selectedindex = 0;
  bool flag1 = false;
  bool flag2 = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
      if (_selectedindex == 0 || _selectedindex == 1) {
        flag1 = false;
        flag2 = false;
      }

      if (_selectedindex == 2) {
        flag1 = true;
        flag2 = false;
      }

      if (_selectedindex == 3) {
        flag1 = false;
        flag2 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widegets = <Widget>[
      HomeScreen(),
      Searchscreen(),
      Libraryscreen(),
      Premiumscreen(),
    ];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.amber[800],
          currentIndex: _selectedindex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.home),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/lib.png",
                    height: 25,
                    width: 25,
                    color: flag1 ? Colors.amber[800] : Colors.white,
                  ),
                ),
                label: "Your library"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/logobl.png",
                    height: 30,
                    width: 25,
                    color: flag2 ? Colors.amber[800] : Colors.white,
                  ),
                ),
                label: "Premium"),
          ],
        ),
        body: Center(
          child: widegets[_selectedindex],
        ),
      ),
    );
  }
}
