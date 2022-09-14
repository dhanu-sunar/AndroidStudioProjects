import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> entries = <String>['a', 'b', 'c'];
  final List<int> colorCodes = <int>[100, 200, 300];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(40),
              color: Colors.amber[colorCodes[index]],
              child: Text('Entry ${entries}'),
            );
          },),
      ),
    );
  }
}
