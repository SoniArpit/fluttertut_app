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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
        builder: (context, snapshot) {
          var mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Center(
              child: Text(
                "Loading",
              ),
            );
          } else {
            return Center(
              child: Text(
                mydata["name"],
              ),
            );
          }
        },
      ),
    );
  }
}
