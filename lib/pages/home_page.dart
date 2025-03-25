import 'package:flutter/material.dart';

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
                    Text('Hello,',
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
                    borderRadius: BorderRadius.circular(12)
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
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Row(children: [
                // Animation or cute picture
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),
                // How do you feel + get started button
                Column(
                  children: [
                    Text('How do you feel'),
                    Text('Fill Out your medical card right now'),
                    Container(
                      child: Center(
                        child: Center(
                          child: Text('Get Sarted'),
                        ),
                      )
                    )
                  ],
                )
            
              ],),
            ),
          )

        ],
      ),
    ),);
  }
}
