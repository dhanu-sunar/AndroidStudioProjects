import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  // create variables
  final String imagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  //create constructor
  DoctorCard({
    required this.imagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imagePath,
                height: 65,
              ),
            ),

            //rating out of 5
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Text(rating),
              ],
            ),

            //doctor's name
            Text(doctorName, style: TextStyle(fontWeight: FontWeight.bold),),

            //doctor's title
            Text(doctorProfession),
          ],
        ),
      ),
    );
  }
}
