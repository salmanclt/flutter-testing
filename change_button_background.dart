import 'package:flutter/material.dart';


class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }
}

class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> _colors = [ //Get list of colors
    Colors.grey,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow
  ];

  int _currentIndex1 = 0;
  int _currentIndex2 = 0;
  int _currentIndex3 = 0;
  int _currentIndex4 = 0;


  _onChangedb() {
    setState(() {
      _currentIndex1 = 1;
      _currentIndex2 = 0;
      _currentIndex3 = 0;
      _currentIndex4 = 0;

//      if (_sts == 0) {
//        _currentIndex = 0;
//        _sts = 1;
//      } else {
//        _currentIndex = 1;
//        _sts = 0;
//      }
    });
  }

  _onChangedg() {
    setState(() {
      _currentIndex2 = 2;
      _currentIndex1 = 0;
      _currentIndex3 = 0;
      _currentIndex4 = 0;
//      if (_sts == 0) {
//        _currentIndex = 0;
//        _sts = 1;
//      } else {
//        _currentIndex = 2;
//        _sts = 0;
//      }
    });
  }

  _onChangedr() {
    setState(() {
      _currentIndex3 = 3;
      _currentIndex1 = 0;
      _currentIndex2 = 0;
      _currentIndex4 = 0;
//      if (_sts == 0) {
//        _currentIndex = 0;
//        _sts = 1;
//      } else {
//        _currentIndex = 3;
//        _sts = 0;
//      }
    });
  }

  _onChangedy() {
    setState(() {
      _currentIndex4 = 4;
      _currentIndex1 = 0;
      _currentIndex2 = 0;
      _currentIndex3 = 0;

//      if (_sts == 0) {
//        _currentIndex = 0;
//        _sts = 1;
//      } else {
//        _currentIndex = 4;
//        _sts = 0;
//      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Case 1'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Blue'),
                  color: _colors[_currentIndex1],
//                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  onPressed: _onChangedb,
                ),

                RaisedButton(
                  child: Text('Green'),
                  color: _colors[_currentIndex2],
//                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  onPressed: _onChangedg,
                ),

                RaisedButton(
                  child: Text('Red'),
                  color: _colors[_currentIndex3],
//                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  onPressed: _onChangedr,
                ),

                RaisedButton(
                  child: Text('Yellow'),
                  color: _colors[_currentIndex4],
//                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  onPressed: _onChangedy,
                ),

              ],
            )

        ));
  }
}