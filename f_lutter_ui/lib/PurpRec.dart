import 'package:flutter/material.dart';


class PurpRec extends StatelessWidget {
  const PurpRec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple,
      ),
    );
  }
}
