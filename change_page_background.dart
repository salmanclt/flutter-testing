import 'package:flutter/material.dart';
import 'package:flutterapp1/colored_page.dart';

class ChangePageBackground extends StatefulWidget {
  @override
  ChangePageBackgroundState createState() {
    return new ChangePageBackgroundState();
  }
}

class ChangePageBackgroundState extends State<ChangePageBackground> {
//  List<Widget> _children = [
//    ColoredPage(Colors.red),
//    ColoredPage(Colors.green),
//    ColoredPage(Colors.blue)
//  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Case 2'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  child: Text('Red'),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColoredPage(Colors.red)),
                    );
                  }),
              RaisedButton(
                  child: Text('Green'),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColoredPage(Colors.green)),
                    );
                  }),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            RaisedButton(
                child: Text('Blue'),
                color: Colors.grey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColoredPage(Colors.blue)),
                  );
                }),
          ])
        ])));
  }
}
