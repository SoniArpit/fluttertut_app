import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My Flutter App",
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          tooltip: 'nav menu',
          onPressed: null,
        ),
        title: Text("Example App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'Search button',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text("Hello Arpit"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
