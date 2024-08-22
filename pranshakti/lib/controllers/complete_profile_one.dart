import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/models/signup_model.dart';
import 'package:pranshakti/utils/common_methods.dart'; // Import your common methods

class CompleteProfileOneController extends GetxController {

  final TextEditingController verifyPhoneTextEditingController = TextEditingController();
  final TextEditingController EnterPhoneOTPTextEditingController =TextEditingController();    
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool checkPhone() {
    return CommonMethods.validateMobile(verifyPhoneTextEditingController.text);  
  }
}
