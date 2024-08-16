import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/routes/routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color:Color.fromRGBO(197, 139, 242, 1)),
            onPressed: () {
               Get.toNamed(Routes.homePage);
            },
          ),
          IconButton(
            icon: Icon(Icons.show_chart, color: Colors.grey),
            onPressed: () {
              Get.toNamed(Routes.workoutTracker);
            },
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                 
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.grey),
            onPressed: () {
              Get.toNamed(Routes.activityTrackerPage);
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.grey),
            onPressed: () {
              Get.toNamed(Routes.profile);
            },
          ),
        ],
      ),
    );
  }
}