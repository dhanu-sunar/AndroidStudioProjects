import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'demo',
    home: firstScreen(),
  ));
}

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: new Container(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => secondScreen(),));
            }, child: Text('go to second page')),
        ),
      ),
    );
  }
}

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text('piss off'))
    );
  }
}

