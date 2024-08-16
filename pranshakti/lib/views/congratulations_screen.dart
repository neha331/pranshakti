

import 'package:flutter/material.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';

class CongratulationsScreen extends StatelessWidget{
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:90),
            Image.asset("assets/images/Frame.png"),
            SizedBox(height:20),
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                 text:"Congratulations, You Have",
                 fontWeight: FontWeight.w700,
                 fontSize: 20,
              ),
                            CustomTextWidget(
                 text:"Finished Your Workout",
                 fontWeight: FontWeight.w700,
                 fontSize: 20,
                           ),
                           SizedBox(height:20),
                           CustomTextWidget(
                 text:"Exercises is king and nutrition is queen. Combine the",
                 fontWeight: FontWeight.w400,
                 fontSize: 13,
                 color:Color.fromRGBO(123, 111, 114, 1),
                           ),
                           CustomTextWidget(
                 text:"two and you will have a kingdom",
                 fontWeight: FontWeight.w400,
                 fontSize: 13,
                 color:Color.fromRGBO(123, 111, 114, 1),
                           ),
                            CustomTextWidget(
                 text:"        -Jack Lalanne",
                 fontWeight: FontWeight.w400,
                 fontSize: 13,
                 color:Color.fromRGBO(123, 111, 114, 1),
                           ),
                           SizedBox(height:20),
                           CustomButton(
                            text: "Back To Home", 
                            height: 60, 
                            width: 315, 
                            borderRadius: 20,
                            onPressed: () {
                                  print('Send OTP button pressed');
                             },
                        ),
                
              ],
            ) 
          ],
        ),
      ),
    );
  }

}