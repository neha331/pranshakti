import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/controllers/signup_controller.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';

import '../routes/routes.dart';

class CreateAccount extends StatelessWidget {
 CreateAccount({super.key});

 final SignupController _signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final padding = mediaQuery.viewInsets.bottom + mediaQuery.size.height * 0.05;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(bottom: padding),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Pranshakti Logo SVG 1.png',
                  height: mediaQuery.size.height * 0.25,
                  width: mediaQuery.size.width * 0.5,
                ),
                const SizedBox(height: 30),
                const CustomTextWidget(
                  text:AppStrings.createAccount,
                  fontSize: 24,
                  fontWeight: FontWeight.w600, 
                ),                
                const SizedBox(height: 30),
                Form(
                  key: _signupController.formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _signupController.userNameTextEditingController,
                        labelText: AppStrings.enterEmail,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: AppStrings.sendOtp,
                  height: 59,
                  width:248,
                  borderRadius: 40.0,
                  onPressed: () {
                    if (_signupController.checkEmail()) {
                      Get.toNamed(Routes.emailOtpVerification);
                     }else{
                      Get.snackbar('Invalid Email', 'Please enter a valid email address');
                     }
                  },
                ),
                const SizedBox(height: 80),
                const OrDivider(),
                const SizedBox(height: 50),
                const SocialMediaButtons(),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text:AppStrings.alreadyAccount,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text:AppStrings.login,
                      fontSize: 14,
                      fontWeight: FontWeight.w500, 
                      color: Constants.colorPurple,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
