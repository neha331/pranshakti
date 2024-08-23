import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/activity_tracker.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';
import 'package:pranshakti/widgets/workout_tracker/GridViewWidget.dart';

class WorkoutTracker extends StatelessWidget {
 WorkoutTracker({super.key});
 final List<String> workoutImages = [
    'assets/images/ABWorkout.png',
    'assets/images/workout.png',
    'assets/images/workout.png',
    'assets/images/ABWorkout.png',
    'assets/images/workout.png',
    'assets/images/workout.png',
  ];
  final List<String> workoutNames = [
    'AB Workout',
    'AB Workout',
    'AB Workout',
    'AB Workout',
    'AB Workout',
    'AB Workout',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
                text:AppStrings.welcomeStr,
                fontSize: 24,
                fontWeight: FontWeight.w600, 
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child:Text(
                 "USERNAME",
                 style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          const Align(
                alignment: Alignment.topLeft,
                child:CustomTextWidget(
                  text:AppStrings.createNewPassword,
                  fontSize: 16,
                  fontWeight: FontWeight.w500, 
                ),
              ),            
              Expanded(
                child: GridViewWidget(
                itemCount: 6,
                crossAxisCount: 2,
                childAspectRatio: 1.0, 
                //itemBuilder: (BuildContext context, int index) { 
                  
                // },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height:150,
                        width:150,
                        child: GestureDetector(
                        child: Image.asset(
                           workoutImages[index],
                        ),
                        ),
                      ),
                      Text(workoutNames[index]),
                  ]
                  );
              },
            ),
         ),
          ]
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}