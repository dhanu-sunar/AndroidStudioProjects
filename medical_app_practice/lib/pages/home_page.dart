import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app_practice/util/doctor_card.dart';
import '../util/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Dhanu Sunar',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  //profile picture
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person)),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //card- hoe do you feel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  child: Row(
                    children: [
                      //animated pic
                      Container(
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_960_720.png',
                          height: 200,
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      //text detail
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How do you feel?',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Fill out the medical cart right now',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //Horizontal listview
            Container(
              height: 74,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/a.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/b.png',
                  ),
                  CategoryCard(
                    categoryName: 'GP',
                    iconImagePath: 'lib/icons/c.png',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  imagePath: 'lib/images/aa.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Varush BK',
                  doctorProfession: 'Dentist',
                ),
                DoctorCard(
                  imagePath: 'lib/images/bb.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Radha Sonar',
                  doctorProfession: 'GP',
                ),
                DoctorCard(
                  imagePath: 'lib/images/d.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Aarush Ghimire',
                  doctorProfession: 'surgeon',
                ),
              ],
            )),

            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
