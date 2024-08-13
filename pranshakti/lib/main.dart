import 'package:flutter/material.dart';
import 'package:pranshakti/view/congratulations_screen.dart';
import 'package:pranshakti/view/email_otp_verification.dart';
import 'package:pranshakti/view/activity_tracker.dart';
import 'package:pranshakti/view/confirm_phone_number.dart';
import 'package:pranshakti/view/complete_profile_one.dart';
import 'package:pranshakti/view/create_new_password.dart';
import 'package:pranshakti/view/homepage.dart';
import 'package:pranshakti/view/meal_schedule_page.dart';
import 'package:pranshakti/view/notification_screen.dart';
import 'package:pranshakti/view/profile.dart';
import 'package:pranshakti/view/Complete_profile2.dart';
import 'package:pranshakti/view/create_account.dart';
import 'package:pranshakti/view/upgrade_plan_screen.dart';
import 'package:pranshakti/view/phone_verification.dart';
import 'package:pranshakti/view/workout_tracker.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Login page',
      debugShowCheckedModeBanner :false,
      home:CreateAccount(),
    );
  }
}

