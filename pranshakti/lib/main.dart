import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/views/complete_profile_two.dart';
import 'package:pranshakti/views/congratulations_screen.dart';
import 'package:pranshakti/views/email_otp_verification.dart';
import 'package:pranshakti/views/activity_tracker.dart';
import 'package:pranshakti/views/confirm_phone_number.dart';
import 'package:pranshakti/views/complete_profile_one.dart';
import 'package:pranshakti/views/create_new_password.dart';
import 'package:pranshakti/views/homepage.dart';
import 'package:pranshakti/views/meal_schedule_page.dart';
import 'package:pranshakti/views/notification_screen.dart';
import 'package:pranshakti/views/profile.dart';
import 'package:pranshakti/views/create_account.dart';
import 'package:pranshakti/views/upgrade_plan_screen.dart';
import 'package:pranshakti/views/phone_verification.dart';
import 'package:pranshakti/views/workout_tracker.dart';


void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return  GetMaterialApp(
      title: 'Login page',
      debugShowCheckedModeBanner :false,
      initialRoute: Routes.createAccount,
      getPages: Routes.routes, 
    );
  }
}

