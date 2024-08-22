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


