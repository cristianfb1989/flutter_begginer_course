import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Screen 2"), actions: <Widget>[
      IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
      IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.pushNamed(context, '/screen3');
          })
    ])));
  }
}
