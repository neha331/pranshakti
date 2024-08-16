import 'package:get/get.dart';
import 'package:pranshakti/views/Complete_profile2.dart';
import 'package:pranshakti/views/activity_tracker.dart';
import 'package:pranshakti/views/complete_profile_one.dart';
import 'package:pranshakti/views/confirm_phone_number.dart';
import 'package:pranshakti/views/congratulations_screen.dart';
import 'package:pranshakti/views/create_account.dart';
import 'package:pranshakti/views/create_new_password.dart';
import 'package:pranshakti/views/homepage.dart';
import 'package:pranshakti/views/meal_schedule_page.dart';
import 'package:pranshakti/views/notification_screen.dart';
import 'package:pranshakti/views/phone_verification.dart';
import 'package:pranshakti/views/profile.dart';
import 'package:pranshakti/views/upgrade_plan_screen.dart';
import 'package:pranshakti/views/workout_tracker.dart';

import '../views/email_otp_verification.dart';

class Routes {
   static const createAccount = '/';
   static const emailOtpVerification = '/EmailOtpVerification';
   static const createNewPassword = '/CreateNewPassword';
   static const confirmPhoneNumber = '/ConfirmPhoneNumber';
   static const phoneVerification = '/PhoneVerification';
   static const completeProfileOne = '/CompleteProfileOne';
   static const completeProfileTwo = '/CompleteProfileTwo';
   static const homePage = '/HomePage';
   static const workoutTracker = '/WorkoutTracker';
   static const activityTrackerPage = '/ActivityTrackerPage';
   static const profile = '/Profile';
   static const upgradePlansScreen= '/UpgradePlansScreen';
   static const mealSchedulePage = '/MealSchedulePage';
   static const notificationScreen = '/NotificationScreen';
   static const congratulationsScreen = '/CongratulationsScreen';

  static final routes = [
    GetPage(
      name: createAccount,
      page: () => CreateAccount(),
      transition: Transition.leftToRight,
      //transition: Transition.circularReveal,
      //transition: Transition.fade,
      //transition: Transition.downToUp,
      //preventDuplicates: false,
    ),
    GetPage(
      name: emailOtpVerification,
      page: () => EmailOtpVerification(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: confirmPhoneNumber,
      page: () => ConfirmPhoneNumber(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: phoneVerification,
      page: () => PhoneVerification(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: createNewPassword,
      page: () => CreateNewPassword(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: phoneVerification,
      page: () => PhoneVerification(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: completeProfileOne,
      page: () => CompleteProfileOne(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: completeProfileTwo,
      page: () => CompleteProfileTwo(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: workoutTracker,
      page: () => WorkoutTracker(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: activityTrackerPage,
      page: () => ActivityTrackerPage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: profile,
      page: () => Profile(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: upgradePlansScreen,
      page: () => UpgradePlansScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: mealSchedulePage,
      page: () => MealSchedulePage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: congratulationsScreen,
      page: () => CongratulationsScreen(),
      transition: Transition.leftToRight,
    ),
  ];
}