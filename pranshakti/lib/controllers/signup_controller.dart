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



