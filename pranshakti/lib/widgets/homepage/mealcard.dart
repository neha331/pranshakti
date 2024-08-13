import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Gradient cartColor;
  final VoidCallback onViewPressed;
  final Color? buttonColor;

  MealCard({
    required this.title,
    required this.imagePath,
    this.cartColor=const LinearGradient(
      colors: [
         Color.fromRGBO(146, 163, 253, 1),
         Color.fromRGBO(157, 206, 255, 1),
      ],
    ), 
    required this.onViewPressed,
    this.buttonColor= Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height:240,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient:cartColor,
        // gradient: LinearGradient(
        //   colors:[
        //       Color.fromRGBO(146, 163, 253, 1),
        //       Color.fromRGBO(157, 206, 255, 1),
        //   ]
        // ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: onViewPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text('View'),
          ),
        ],
      ),
    );
  }
}
