// you can also code secondscreen in main file (in one file means)
import 'package:flutter/material.dart';

// class secondscreen extends StatelessWidget {
//   String value;
//   secondscreen({this.value});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text(value),
//     );
//   }
// }

class secondscreen extends StatefulWidget {
  List value;
  secondscreen({Key key, this.value}) : super(key: key);
  @override
  _secondscreenState createState() => _secondscreenState(value);
}

class _secondscreenState extends State<secondscreen> {
  List value;
  _secondscreenState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(value[1]),
      ),
    );
  }
}
