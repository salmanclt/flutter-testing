import 'package:flutter/material.dart';
import 'package:flutterapp1/change_button_background.dart';
import 'change_page_background.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ChangeButtonBackground(),
    ChangePageBackground()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('My Flutter App'),
//      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.apps),
            title: new Text('Case 1'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.apps),
            title: new Text('Case 2'),
          ),
        ],
      ),
    );
  }
}
