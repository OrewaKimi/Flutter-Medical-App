import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

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
            // Picture Of Doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child:Image.asset('lib/images/doctor1.jpg', 
            height: 100,
            ),
      ),
      
            // Rating Out Of 5
            Row(children: [Icon(Icons.star), Text('4.9')]),
      
            // Doctor Name
            Text('Dr. Arle McCoy'),
      
            // Doctor Title
            Text('Therapist, 7 y.e.'),
          ],
        ),
      ),
    );
  }
}
