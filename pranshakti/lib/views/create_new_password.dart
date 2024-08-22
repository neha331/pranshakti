import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pranshakti/controllers/create_new_password.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class CreateNewPassword extends StatelessWidget {
  CreateNewPassword({super.key});

  final CreateNewPasswordController _signupController = Get.put(CreateNewPasswordController());

  // final TextEditingController _userPasswordTextEditingController =
  //     TextEditingController();
  //   final TextEditingController _userConfirmPasswordTextEditingController =
  //     TextEditingController();   
  // final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                  text:AppStrings.createNewPassword,
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
                        controller: _signupController.userPasswordTextEditingController,
                        labelText: AppStrings.enterNewPassword,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock_outline_rounded,
                        suffixIcon: Icons.remove_red_eye_outlined,
                      ),
                      SizedBox(height:20),
                      UserInputTextFormField(
                        controller: _signupController.userConfirmPasswordTextEditingController,
                        labelText: AppStrings.confirmNewPassword,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock_outline_rounded,
                        suffixIcon: Icons.remove_red_eye_outlined,
                      ),
                    
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: AppStrings.next,
                  height: 60,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: () {
                    if (_signupController.checkPassword()) {
                      Get.toNamed(Routes.confirmPhoneNumber);
                     }else{
                      Get.snackbar('Invalid Password', 'Password length should be 8-12 characters, password should have at least 1 Digit, 1 lowercase letter and 1 uppercase letter');
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
