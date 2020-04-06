import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: "My Flutter App",
    home: MyHome(),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Changer",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> randColor = [
    Colors.red,
    Colors.amber,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.blue,
    Colors.lightGreen,
    Colors.teal,
  ];

  int index;
  Color currentColor = Colors.white;
  void changeColor() {
    setState(() {
      index = Random().nextInt(randColor.length);
      currentColor = randColor[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: currentColor,
      ),
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: changeColor,
        child: Text(
          "Change!",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
