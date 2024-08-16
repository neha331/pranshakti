import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/views/workout_tracker.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';
import 'package:pranshakti/widgets/homepage/custom_graph.dart';
import 'package:pranshakti/widgets/homepage/mealcard.dart';
import 'package:pranshakti/widgets/homepage/sectiontile.dart';
import 'package:pranshakti/widgets/social_media_button.dart';


import 'package:flutter/material.dart';
import 'package:pranshakti/widgets/workout_tracker/line_chart.dart';

import '../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
              // Header
              Row(
                children: [
                  Text(
                    'Welcome Back,',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.grey),
                    onPressed: () {
                     Get.toNamed(Routes.notificationScreen);
                   },

                  )
                ],
              ),
              SizedBox(height: 4),
              Text(
                'USERNAME',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 16),

              // Progress Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFDCEFFC),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Track Your Progress Each',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          'Month With Photo',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text('Learn More'),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/calender.svg',
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),

              Container(
                height: 63,
                width:348,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(242, 227, 235, 1)
                ) ,
                child: SectionTitle(
                  title: 'Today Target',
                  actionText: 'Check',
                  onActionPressed: () {
                    // Define the action here
                    print('Button pressed');
                  },
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                 
                  children: [
                    MealCard(
                      title: 'Dhaniya + jeera water\nwith 5 soaked almonds',
                      imagePath: 'assets/images/pancakes.png',
                      cartColor: const LinearGradient(
                        colors: [
                          Color.fromRGBO(146, 163, 253, 1),
                          Color.fromRGBO(157, 206, 255, 1),
                        ],
                      ),
                      
                      onViewPressed: () {
                        // Define what happens when the "View" button is pressed
                        print('View Meal 2');
                      },
                    ),
                    MealCard(
                      title: 'Dhaniya + jeera water\nwith 5 soaked almonds',
                      imagePath: 'assets/images/meal.png',
                      buttonColor:Color.fromRGBO(232, 116, 197, 1),
                      cartColor: const LinearGradient(
                        colors: [
                         // Color.fromRGBO(197, 139, 242, 1),
                          Color.fromRGBO(238, 164, 206, 1),
                           Color.fromRGBO(242, 227, 235, 1)
                        ],
                      ),
                  
                      onViewPressed: () {
                        // Define what happens when the "View" button is pressed
                        print('View Meal 2');
                      },
                    ),
                  ],
                ),
              ),
              
              Container(
                height:63,
                width:348,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(242, 227, 235, 1)
                ),
                child: SectionTitle(
                  title: 'Today Target',
                  actionText: 'Check',
                  onActionPressed: () {
                    // Define the action here
                    print('Button pressed');
                  },
                ),
              ),
              SizedBox(height:10),
              Container(
                height: 63,
                width:348,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  
                  
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/glass.png',
                      width: 50,
                      height:50, // Replace with your image asset path
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Water intake'),
                        const Text('120ml / 8L'),
                        const SizedBox(height: 4,width:10,),
                        Container(
                          width:191,
                          height:10,
                          child: LinearProgressIndicator(
                            value: 0.15,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                            minHeight: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 200,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: WeightProgressChart(),
                  ),
                ),
                // Container(
                //   height:100,
                //   width:100,
                //   color:Colors.green,
                //   child: CustomBottomNavigationBar(
                //      currentIndex: 1, 
                //      onTap: (int value) {  
                  
                //      },
                     
                //   ),
                // ),
                
                
            ]
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

 
}

