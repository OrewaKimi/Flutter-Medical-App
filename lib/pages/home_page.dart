import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // App Bar

          // Card -> how do you feel?

          // Search Bar

          //horizintal lisview -> categories: dentist, surgeon, etc

          //doctor list
        ],
      ),
    );
  }
}