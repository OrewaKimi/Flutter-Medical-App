import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Row(
        children: [
          Image.asset('lib/icons/tooth.png', height: 40),
          Text('Dentist'),
        ],
      ),
    );
  }
}
