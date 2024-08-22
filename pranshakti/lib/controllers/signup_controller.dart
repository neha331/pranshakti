import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/models/signup_model.dart';
import 'package:pranshakti/utils/common_methods.dart'; // Import your common methods

class SignupController extends GetxController {
  // User Model
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController userNameTextEditingController = TextEditingController();
  var user = UserModel(email: '').obs;

  bool checkEmail() {
    return CommonMethods.validateEmail(userNameTextEditingController.text);  
  }

  void updateEmail(String value) {
    user.update((user) {
      user?.email = value;
    });
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
