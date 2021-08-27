import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Navigation',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
        }, child: Text('SecondScreen')),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Piss Off')),
      ),
    );
  }
}
