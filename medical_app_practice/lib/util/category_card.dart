import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  //variables between cards
  final iconImagePath;
  final String categoryName;

  //constructor
  CategoryCard({
    required this.iconImagePath,
    required this.categoryName,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(iconImagePath, height: 50,),
            SizedBox(width: 10,),
            Text(categoryName),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple[100],
        ),
      ),
    );
  }
}
