import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Nagivation',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello 1st'),),

      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second'),
          onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
          },
        ),
      ),
    );

  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
