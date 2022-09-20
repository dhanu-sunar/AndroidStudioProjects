import 'package:flutter/material.dart';
import 'package:f_lutter_ui/PurpRec.dart';

void main() =>  runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
final List _posts = ['post 1', 'post']

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PurpRec(),
          PurpRec(),
        ],
          ),);
  }
}
