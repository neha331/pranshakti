import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/controllers/phone_verification_controller.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/complete_profile_one.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class PhoneVerification extends StatelessWidget {
  PhoneVerification({super.key});
  
  final PhoneVerificationController _PhoneVerificationController = Get.put(PhoneVerificationController());
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
                const SizedBox(height: 10),
                const CustomTextWidget(
                  text: AppStrings.verifyPhoneNumber,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                const SizedBox(height: 30),
                Form(
                  key: _PhoneVerificationController.formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _PhoneVerificationController.verifyPhoneTextEditingController,
                        labelText: AppStrings.enterPhoneNumber,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.phone_outlined,
                      ),
                      const SizedBox(height: 30),
           
                      UserInputTextFormField(
                        controller: _PhoneVerificationController.EnterPhoneOTPTextEditingController,
                        labelText: AppStrings.enterPhoneOtp,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock_open_rounded,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topRight,
                  child: CustomButton(
                    text: AppStrings.reSendOtp,
                    height: 50,
                    width: 120,
                    borderRadius: 40.0,
                    onPressed: () {
                      if (_PhoneVerificationController.checkPhone()) {
                      Get.snackbar('Otp Sent','on your phone number');
                     }else{
                      Get.snackbar('Invalid Phone', 'Please enter a valid Phone number');
                     }
                    },
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: AppStrings.next,
                  height: 59,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: (){
                    
                  },
                ),
                const SizedBox(height: 20),
                const OrDivider(),
                const SizedBox(height: 30),
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
