import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Column(
        children: [
          // Picture Of Doctor
          Image.asset('lib/images/doctor1.jpg', height: 40),

          // Rating Out Of 5
          Row(children: [Icon(Icons.star), Text('4.9')]),

          // Doctor Name
          Text('Dr. Arle McCoy'),

          // Doctor Title
          Text('Therapist, 7 y.e.'),
        ],
      ),
    );
  }
}
