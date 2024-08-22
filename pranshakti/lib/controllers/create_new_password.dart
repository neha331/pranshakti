import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/models/signup_model.dart';
import 'package:pranshakti/utils/common_methods.dart'; // Import your common methods

class CreateNewPasswordController extends GetxController {
  // User Model
  final TextEditingController userPasswordTextEditingController = TextEditingController();
  final TextEditingController userConfirmPasswordTextEditingController =TextEditingController();   
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool checkPassword() {
    return CommonMethods.validatePassword(userPasswordTextEditingController.text);  
  }

  
}


// void verifyEmail() {
  //   if (user.value.email.isNotEmpty) {
  //     // Use the validateEmail method from CommonMethods to check if the email is valid
  //     bool isValid = CommonMethods.validateEmail(user.value.email);
  //     if (isValid) {
  //       // Proceed with OTP sending or other operations
  //       print('Email is valid');
  //       Get.snackbar('Success', 'Valid email entered');
  //     } else {
  //       Get.snackbar('Invalid Email', 'Please enter a valid email address');
  //     }
  //   } else {
  //     Get.snackbar('Error', 'Email field is empty');
  //   }
  // }
