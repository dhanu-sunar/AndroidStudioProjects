
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('An app'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('Yo'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Text('click'),
    ),
  ),
));