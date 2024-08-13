import 'package:flutter/material.dart';
import 'package:pranshakti/view/congratulations_screen.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What Do You Want to Train',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  buildWorkoutCard(
                    context,
                    'Fullbody Workout',
                    '11 Exercises | 32mins',
                    'assets/images/workout1.png',
                  ),
                  buildWorkoutCard(
                    context,
                    'Lowebody Workout',
                    '12 Exercises | 40mins',
                    'assets/images/workout2.png',
                  ),
                  buildWorkoutCard(
                    context,
                    'AB Workout',
                    '14 Exercises | 20mins',
                    'assets/images/workout3.png',
                  ),
                ],
              ),
            ),
            ElevatedButton(
                  child: const Text('Go to New Screen'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CongratulationsScreen()),
                    );
                  }
              )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar()
    );
  }

  Widget buildWorkoutCard(
      BuildContext context, String title, String subtitle, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color.fromRGBO(157, 206, 255, 1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(subtitle),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('View more'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
           
            Spacer(),
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}