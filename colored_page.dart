import 'package:flutter/material.dart';

class ColoredPage extends StatelessWidget {
  final Color color;

  ColoredPage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        height: double.infinity,
        color: color,
      ),
    );
  }
}
