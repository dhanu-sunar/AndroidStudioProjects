import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['One', 'Two', 'Three'];
    final List<int>colorCodes = <int>[100, 200, 300];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: new Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: new Text('ListView'),
          actions: [
            IconButton(onPressed: (){print('Your pressed this button');}, icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) =>
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.amber[colorCodes[index]],
                child: Text('This is ${entries[index]}'), 
              ),
        ),
      ),
    );
  }
}
