import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertut/thirdscreen.dart';
import 'package:fluttertut/secondscreen.dart';

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
      // for multiple routs
      routes: {
        '/second': (context) => secondscreen(),
        '/third': (context) => thirdscreen(),
      },
      title: "MutlipleScreen",
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
  List<String> names = ["Arpit", "Harry"];
  String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text) {
              value = text;
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => secondscreen(value: names),
              ));
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
