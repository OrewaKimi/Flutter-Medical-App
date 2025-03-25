import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/util/category_card.dart';
import 'package:medicalappui/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kimi Maulana',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),

                  // Profile Picture
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Animation or cute picture
                    Container(
                      height: 100,
                      width: 100,
                        child: Lottie.network('https://lottie.host/253dc760-591c-4fdf-8880-8fe666320ae4/G1YW8js9Ud.lotti',),
                    ),

                    SizedBox(width: 20),

                    // How do you feel + get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Fill out your medical card right now.'),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
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

            SizedBox(height: 25),

            // horizontal listview -> dentist, surgeon, etc..
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'PHarmacist',
                    iconImagePath: 'lib/icons/medicine.png',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorCard(
                      doctorImagePath: 'lib/images/doctor1.jpg',
                      rating: '4.9',
                      doctorName: 'Dr. Ganesh',
                      doctorProfession: 'Therapist',
                    ),
                    DoctorCard(
                      doctorImagePath: 'lib/images/doctor2.jpg',
                      rating: '4.7',
                      doctorName: 'Dr. Kimi Maulana',
                      doctorProfession: 'Psychologist',
                    ),
                    DoctorCard(
                      doctorImagePath: 'lib/images/doctor3.jpg',
                      rating: '4.6',
                      doctorName: 'Dr. Steeve harvey',
                      doctorProfession: 'Surgeon',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}