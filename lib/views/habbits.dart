import 'package:flutter/material.dart';

class Habbits extends StatefulWidget {
  @override
  _HabbitsState createState() => _HabbitsState();
}

class _HabbitsState extends State<Habbits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("set habbits"),
    ));
  }
}
